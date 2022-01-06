# frozen_string_literal: true

require 'pg'

class Statement
  attr_reader :id, :change, :total, :created_at

  def initialize(id, change, total, created_at)
    @id = id
    @change = change
    @total = total
    @created_at = created_at
  end

  def self.create(change, total)
    connection = if ENV['RACK_ENV'] == 'test'
                   PG.connect(dbname: 'bank_test')
                 else
                   PG.connect(dbname: 'bank')
                 end
    connection.exec_params('INSERT INTO account_history (change, total) VALUES ($1, $2);', [change, total])
  end

  def self.all
    connection = if ENV['RACK_ENV'] == 'test'
                   PG.connect(dbname: 'bank_test')
                 else
                   PG.connect(dbname: 'bank')
                 end
    result = connection.exec('SELECT * FROM account_history;')
    result.map do |transaction|
      Statement.new(
        transaction['id'], transaction['change'], transaction['total'], transaction['created_at']
      )
    end
  end
end
