




############################ Assignment MathDojo Project ############################

class MathDojo
  attr_reader :result

  def initialize
    @result = 0
  end

  def add(*num)
    @result = @result + num.flatten.reduce(0,:+)
    self
  end

  def subtract (*num)
    @result = @result - num.flatten.reduce(0,:+)
    self
  end

end
challenge1 = MathDojo.new.add(2).add(2, 5).subtract(3, 2).result # => 4
challenge2 = MathDojo.new.add(1).add(3, 5, 7, 8).subtract(4).result # => 23.15

puts challenge1
puts challenge2


############################ Assignment OOP Project ############################

# class Project
#   # attr_accessor :name, :description
#
#   def initialize(name, description)
#     @name = name
#     @description = description
#   end
#   def elevator_pitch
#     puts "This #{3 + 3} is #{@name} and #{@description}"
#   end
# end
#
#
# project1 = Project.new("Project 1", "Description 1")
# # puts project1.name # => "Project 1"
# project1.elevator_pitch  # => "Project 1, Description 1"


############################ Assignment: Basic 13 ############################

# Print 1-255
############################

# i=1
# while i < 256
#   puts i
#   i += 1
# end

# for i in 1..255
#   puts i
# end

# 1.upto(255){|i| print i, " "}

# Print odd numbers between 1-255
############################
# for i in 1..255
#   if i % 2 != 0
#     puts i
#   end
# end

# puts (1..255).reject{|i| i % 2 == 0}

#Print Sum
############################

# y=0
# for i in 1..255
#   x = i
#   y = x + y
#   print "New number: #{x} sum: #{y} "
# end

#Iterating through an array
############################
# x = [1,3,5,7,9,13]
#
# x.each {|i| print i, ' '}

#Find Max
############################
# x = [-1, 3, 4, -8, 9]
# puts x.max

#Find Avg
############################
# arr = [-1, 3, 4, -8, 9]
#
# sum = 0
# arr.each {|i| sum = sum + i}
# puts sum
# puts sum.to_f/arr.length

#Array with Odd Numbers
############################
# puts (1..255).find_all{|i| i % 2 != 0}


# Greater Than Y???????????
############################
# array = [1, 3, 10, 7]
# y = 3
# puts array.count{|i| i > y }

# Square The Values
############################
# array = [1, 5, 10, -2]
# puts array.collect{|x| x * x}

# Eliminate Negative Numbers
############################
# x = [1, 5, 10, -2]
# z = x.reject {|y| y < 0}
# puts z

# Max, Min, Avg
############################

############################ Assignment: Range ############################
# a = (1..200)
#
# #.include?(value)
# puts a.include?(50)
#
# #.last
# puts "this is your last number " + a.last.to_s
#
# #.max
# puts "this is your max " + a.max.to_s
#
# #.min
# puts "this is your min " + a.min.to_s
#

############################ Assignment: Iterators Test: ############################
#
# a = ['mike','sam','teddy', 'kevin']
# b = %w[jack jill sam]
# c = %w[1 2 3 4 5]

#.any? { |obj| block }
# puts a.all?{ |word| word.length > 2}

#.each
# a.each{ |var| puts var * 2, "1", "2"}

# .collect{|obj| block}
# statement = b.collect{|var| var * 3}
# puts statement

# .detect/.find
# puts a.detect{ |var| var == 'sam' and var == 'teddy'}
# puts b.find{|var| var =='jack' and var =='jack'}

#.find_all { |obj| block } or .select { |obj| block }
# puts a.find_all {|x| x.include? 'e' }
# puts b.find_all{|x| x.include? 'j'}

#.reject { |obj| block }

# puts a.reject{|x| x.include? 'e'}
# puts b.reject{|x| x.include? 'j'}

#.upto(limit)
# 2.upto(4){|x| print x,' '}


############################ Assignment: Arrays Exercise: ############################
# a = ["robert", "kelsey", "josh", "laura"]
# b = [10,9,11,12]
# c = ["kelsey", 12]

#.at
# puts a.at(2)
#
# #.fetch
# puts b.fetch(2)
#
# #.delete
# puts b.delete_at(3)
# print b

#.reverse
# puts a.reverse

#.length
# puts b.length

#.sort
# puts a.sort
# puts b.sort

#.slice
# puts b.slice(1,3)

#.shuffle
# puts b.shuffle()

#.join
# puts [a,b].join('-')

# #.insert
# puts b.insert(2, "Awesome")



#########Assignment: Solving "Guess The Number" Exercise with "IF Statement" ################

# def guess_number guess
#   number = 25
#   if guess > number
#     puts "you're too high"
#   elsif guess < number
#     puts "you're too low"
#   elsif guess == number
#     puts "you're right on the money"
#   end
# end
# guess_number 25
#
# def guess_number guess
#   number = 25
#   puts "Great job you found it" unless guess != number
#   puts "You're a little high" unless guess < number || guess == number
#   puts "You're a little low" unless guess > number || guess == number
# end
# guess_number 26

# def guess_number guess
#   number = 25
#   unless guess != number
#     puts "Great Job you found it"
#   end
#   unless guess < number || guess == number
#     puts "You're a little high"
#   end
#   unless guess > number || guess == number
#     puts "You're a little low"
#   end
# end
# guess_number 22

### The below doesn't work because I the "when" is doing a "true" "false" statement and that's why my "case" statement is comparing against...
# def guess_number guess
#   number = 25
#   case number
#   when guess < number
#     puts your number is too low
#   when guess > number
#     puts your number is too high
#   else
#     puts "you got it!"
#   end
# end
# guess_number 22
