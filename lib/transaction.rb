# frozen_string_literal: true

require_relative 'statement'

def current_balance
  if Statement.all.empty?
    0
  else
    Statement.all.last.total.to_i
  end
end

def deposit(added_funds)
  balance = added_funds + current_balance
  Statement.create(added_funds, balance)
end

def withdraw(subtracted_funds)
  if subtracted_funds > current_balance
    puts ' '
    puts 'You do not have enough funds to withdraw that amount.'
  else
    balance = current_balance - subtracted_funds
    Statement.create("-#{subtracted_funds}".to_i, balance)
  end
end

def statement
  puts '|| Date || Amount || Remaining balance ||'

  puts 'You have no history of transactions to show' if Statement.all.empty?
  Statement.all.each do |x|
    puts "#{x.created_at[0, 10]} || #{x.change} || #{x.total} || "
  end
end
