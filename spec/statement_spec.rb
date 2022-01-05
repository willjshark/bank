require 'statement'

describe Statement do

    it "creates a transaction record in account_history" do
      Statement.create(50, 1000)
      expect(Statement.all.first.change).to eq "50"
      expect(Statement.all.first.total).to eq "1000"
  end 
  end 