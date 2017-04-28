class BankAccount
attr_reader :acc_number, :checking, :savings

  def initialize
    @acc_number = acc_number
    @checking = 0
    @savings = 0
    puts "\nThanks for setting up an account with Evil Bank Corp!!!"
  end
  #
  def deposit_check(account,amount)
    if account.downcase == "checking"
      @checking += amount
    else
      @savings += amount
    end
  end

  def withdraw_money(account,amount)
    if @savings <= 0
      puts "you poor man...go away"
    end
    if @checking <= 0
      puts "you poor man...go away"
    end
    if account.downcase == "checking"
      @checking -= amount
    else
      @savings -= amount
    end
  end

  def check_balance
    puts "\nYour checking balance is $#{@checking}"
    puts "\nYour savings balance is $#{@savings}"
  end

  private
  def acc_number
    (0..9).map{rand(1..9)}.join
  end
end

#Create New Account
bank_process = BankAccount.new
#Returns Balance
bank_process.check_balance
#Withdraws Moneys
bank_process.withdraw_money('checking', 20)
#Returns Balance
bank_process.check_balance
#Deposit Moneyz
bank_process.deposit_check('savings',100)
#Returns Balance
bank_process.check_balance
