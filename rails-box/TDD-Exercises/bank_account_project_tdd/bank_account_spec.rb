require_relative "bank_account"
RSpec.describe BankAccount do

  before(:each) do
    @mybank = BankAccount.new('888',1000,2000)
  end

  it 'has a method that checks the account balance' do
    @mybank.check_balance
  end

  it 'has a method that allows the user to withdraw cash' do
    @mybank.withdraw_money('checking',10000)
    @mybank.withdraw_money('savings',300)
    @mybank.check_balance
  end

  it 'raises an error when the user attempts to set the interest rate'

end
