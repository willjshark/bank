require 'transaction'

describe current_balance do

  it "returns the user's latest balance" do
    Statement.create(50, 1000)
    expect(current_balance()).to eq "1000"
    
end 
end 




