require_relative 'statement'



def current_balance
if Statement.all.last.total.to_i == nil 
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
    fail "You do not have enough funds to withdraw that amount." if subtracted_funds > current_balance
    balance = current_balance - subtracted_funds
    Statement.create(("-#{subtracted_funds}".to_i), balance)
end

