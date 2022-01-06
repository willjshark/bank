# frozen_string_literal: true

require 'pg'

p 'Setting up test database...'

def setup_test_database
  connection = PG.connect(dbname: 'bank_test')
  connection.exec('TRUNCATE account_history;')
end
