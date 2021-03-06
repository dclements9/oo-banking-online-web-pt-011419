class BankAccount
  attr_accessor :status, :balance
  attr_reader :name

  def initialize(name)
    @name = name
    @status = "open"
    @balance = 1000
  end
  def deposit(deposit_amount)
    @balance += deposit_amount
  end
  def display_balance
    "Your balance is $#{@balance}."
  end
  def valid?
    @status == "open" && @balance > 0
  end
  def close_account
    @status = "closed"
  end
end
