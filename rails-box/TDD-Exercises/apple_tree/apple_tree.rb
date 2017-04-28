class Apple_tree
  attr_accessor :age
  attr_reader :height, :apples


  def initialize
    @age = 3
    @height = 5
    @apples = 100
  end

  def year_gone_bye
    @age = @age + 1
    @height = @height * 1.1
    @apples = @apples + 2
  end

  def age_verification
    if @age < 3
      puts "You're too young to have apples"
    elsif @age >10
      puts "you're too old to grow apples"
    else
      puts "How do you like them apples?"
    end
  end

  def pick_apples value
   @apples = @apples - value
   puts "I now have #{@apples}"
  end

end
