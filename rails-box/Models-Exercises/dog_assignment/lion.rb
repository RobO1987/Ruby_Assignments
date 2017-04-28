require_relative "mammal"
class Lion < Mammal

  def initialize
    super
    @health = @health + 20
    puts "I AM A LION MY HEALTH IS #{@health}"
    self
  end

  def fly(t = 0)
    t.times do
      @health = @health - 10
      puts "I'm flying bitch!!! #{@health}"
    end
    self
  end

  def attack_town(t = 0)
    t.times do
      @health = @health - 50
      puts "Hide yo kids hide yo wife I'm attacking your town!!! #{@health}"
    end
    self
  end

  def eat_humans(t = 0)
    t.times do
      @health = @health + 50
      puts "Om nom nom nom nom #{@health}"
    end
    self
  end
end

#USER INPUTS HOW MANY TIMES
puts "I'm a mothafuckin' Lion let's do some shit!!!"
puts "How many times should we attack the town!?"
x = gets.to_i
puts "How many humans should we eat???"
y = gets.to_i
puts "How many times do we want to fly?"
z = gets.to_i
puts "Are you ready to see the health results? (Yes/No)"
answer = gets.chomp

#EXECUTES THE CODE
if answer == "Yes"
  lion = Lion.new
  lion.attack_town(x).eat_humans(y).fly(z)
else
  puts "This lion hates you"
  puts "#{x},#{y},#{z}"
end
