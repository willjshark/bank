require './lib/transaction'

describe :current_balance do

  it "returns the user's latest balance" do
    Statement.create(0, 1000)
    expect(current_balance()).to eq 1000
    
end 
end 

describe :deposit do

    it "it increases the total balance" do
      Statement.create(0, 0)
      deposit(500)
      expect(current_balance()).to eq 500    
  end 
  end 


describe :withdraw do

    it "it decreases the total balance" do
      Statement.create(0, 0)
      deposit(500)
      withdraw(500)
      expect(current_balance()).to eq 0    
  end 

  it "it doesn't decrease the total below 0" do
    Statement.create(0, 0)
    deposit(750)
    expect { withdraw(1000) }.to raise_error "You do not have enough funds to withdraw that amount."  
end 
  end 





