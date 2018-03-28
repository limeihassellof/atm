# put a function / method in a variable and use it

command = lambda {
  subject.withdraw(amount: 100, pin: subject.account.pin_code, account: subject.account, atm: atm)
} #lambda in a variable put a function

command.call

# ------------ other way
# define a function and use it
def command
  subject.withdraw(amount: 100, pin: subject.account.pin_code, account: subject.account, atm: atm)
end

command

#----

something = 1
something

something = lambda {
  puts 'hello you'
}
something.call

#-------
# The two tests below do the exact same thing

it 'can withdraw funds' do
  command = lambda { subject.withdraw(amount: 100, pin: subject.account.pin_code, account: subject.account, atm: atm) }
  expect(command.call).to be_truthy
end

it 'can withdraw funds' do
  expect(subject.withdraw(amount: 100, pin: subject.account.pin_code, account: subject.account, atm: atm)).to be_truthy
end

#-- why use a single hash as attribute instead of many attribute variables?
def my_method(name, age, size, favorite_color, best_pet, home_address, business_address, phone_number)
  # do something with name, age, size, favorite_color, best_pet, home_address, business_address, phone_number
end

my_method('limei', 33, 's', 'red', 'andreas', 'dobeln', 'centralen', '070123456')

my_method('limei', 33, 's', 'red', nil, 'dobeln', 'centralen', '070123456')

#-- this is a better way, using a hash as argument
def my_method(attrs = {})
  # do something with name, age, size, favorite_color, best_pet, home_address, business_address, phone_number
  if attrs[:name] == nil
    raise 'You need to set a name'
  end
end
my_method()
# my_method({name: 'limei', age: 33, size: 's', favorite_color: 'red', home_address: 'dobeln', business_address: 'centralen', phone_number: '070123456'})
