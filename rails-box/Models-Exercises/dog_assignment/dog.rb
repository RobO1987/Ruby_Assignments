require_relative 'mammal'

class Dog < Mammal
  def pet(t = 0 )
    t.times do
      @health = @health + 5
      puts "Pet - #{@health}"
    end
    self
  end
  def walk(t = 0 )
    t.times do
      @health = @health - 1
      puts "Walk - #{@health}"
    end
    self
  end
  def run(t = 0 )
    t.times do
      @health = @health - 10
      puts "Run - #{@health}"
    end
    self
  end
end

doge = Dog.new
doge.pet(10)



#USER INPUTS HOW MANY TIMES
# puts "How many times do you want to pet the dog?"
# x = gets.to_i
# puts "How many times do you want to walk the dog?"
# y = gets.to_i
# puts "How many times do you want to run the dog?"
# z = gets.to_i
# puts "Are you ready to see the health results? (Yes/No)"
# answer = gets.chomp
#
# #EXECUTES THE CODE
# if answer == "Yes"
#   millie = Dog.new
#   millie.display_health().pet(x).walk(y).run(z).display_health()
# else
#   puts "I hate you"
#   puts "#{x},#{y},#{z}"
# end
