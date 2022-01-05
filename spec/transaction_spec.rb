require 'transaction'

describe :current_balance do

  it "returns the user's latest balance" do
    Statement.create(50, 1000)
    expect(current_balance()).to eq 1000
    
end 
end 

describe :deposit do

    it "it increases the total balance" do
      Statement.create(50, 1000)
      deposit(500)
      expect(current_balance()).to eq 1500    
  end 
  end 




