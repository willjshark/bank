# frozen_string_literal: true

require './lib/transaction'

describe :current_balance do
  it "returns the user's latest balance" do
    expect(current_balance).to eq 0
  end
end

describe :deposit do
  it 'it increases the total balance' do
    deposit(500)
    expect(current_balance).to eq 500
  end
end

describe :withdraw do
  it 'it decreases the total balance' do
    deposit(500)
    withdraw(500)
    expect(current_balance).to eq 0
  end

  it "it doesn't decrease the total below 0" do
    expect do
      deposit(750)
      withdraw(1000).to output('You do not have enough funds to withdraw that amount.').to_stdout
    end
  end
end

describe :statement do
  it 'it produces a list of transactions' do
    expect do
      deposit(500)
      withdraw(500)
      statement.to output('|| Date || Amount || Remaining balance ||').to_stdout
    end
  end

  it 'it produces a default message if there are no transactions to show' do
    expect do
      statement.to output('You have no history of transactions to show').to_stdout
    end
  end
end
