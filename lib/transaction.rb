require_relative 'statement'



def current_balance
 return Statement.all.last.total.to_i 
end

def deposit(added_funds)
balance = added_funds + current_balance
Statement.create(added_funds, balance)
end



