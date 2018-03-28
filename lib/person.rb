require './lib/account'

class Person
 attr_accessor :name, :cash, :account

 def initialize(attrs = {})#attrs is a variable name, attribute
   if attrs[:name] == nil
     raise 'A name is required'
   end
   @name = attrs[:name]
   @cash = 0
 end

 def create_account
   @account = Account.new({owner: self})
 end

  def deposit(amount)
    if @account == nil
      raise 'No account present'
    end
    @account.balance += amount
    @cash -= amount
  end

  def withdraw(attrs = {})
    if attrs[:atm] == nil
      raise 'An ATM is required'
    end

    result = attrs[:atm].withdraw(attrs[:amount], attrs[:pin], attrs[:account])

    if result[:status]
      @cash += result[:amount]
      true
    else
      false
    end
  end
end
