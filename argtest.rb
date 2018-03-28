def my_method
  puts "Now calling my_method"
end

my_method

def my_method2(name) #parameter name
  puts "Now #{name} is calling my_method2" # Using #{} to put the value of the variable name into this string
end

my_method2('limei') #argument for the parameter 'name'
#single quotes for short strings without variables in them. I cannot use #{} with single quotes.
#since my_method2 has a parameter called 'name' we need to provide an argument, which now is 'limei'

def my_method3(name = 'unknown person')
  puts "Now #{name} is calling my_method3" # Using #{} to put the value of the variable name into this string
end

my_method3
#since my_method3 has a default value for the parameter 'name' we do not need to provide an argument. it will use the default value instead

my_method3('andreas')
#but I still CAN provide an argument for the parameter, overriding the default value

def my_method_hash(attrs = {})
  puts "Name is #{attrs[:name]}"
end
my_method_hash({name: 'Pelle'}) # Now attrs will be the hash I provide, with the name pelle
my_method_hash # Now attrs will be the empty has we provided as a default value
