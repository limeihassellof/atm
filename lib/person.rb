require './lib/account'

class Person
 attr_accessor :name, :cash, :account

 def initialize(attrs = {})
   if attrs [:name] == nil
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
  end
end
