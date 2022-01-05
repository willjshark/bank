require_relative 'statement'



def current_balance
 return Statement.all.last.total 
end





