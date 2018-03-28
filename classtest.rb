
class Dog
  attr_accessor :size
  NUMBER_OF_LEGS = 4

  def initialize(color = 'pink', size = 'huge')
    @color = color
    @size = size

    puts "#{size} #{color} dog created"
  end

  def happy
    bark
    bark
    bark
  end

  def self.wash(dog)
    puts "washing a #{dog.size} dog"
  end

  def wash
    puts "washing a #{@size} dog"
  end

  private

  def bark
    if @size == 'small'
      puts 'viff'
    else
      puts 'VOFF'
    end
  end
end

nelson = Dog.new('brown', 'small')
pelle = Dog.new('white', 'big')

# if I create a rspec test for Dog, then subject is an object that is an instance of Dog
# Just like nelson above is an instance of Dog
# describe Nelson do will automatically do subject = new Dog

puts nelson.size

# nelson.NUMBER_OF_LEGS # this is wrong
Dog::NUMBER_OF_LEGS #this is right

Dog.wash(nelson) #this is right
nelson.wash #this is also right


nelson.happy

# pelle.bark #this will fail when bark is private

sture = Dog.new
