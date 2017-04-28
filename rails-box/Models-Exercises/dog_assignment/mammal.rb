class Mammal
  def initialize
    @health = 150
  end

  def display_health
    puts "Current health is at #{@health}"
    self
  end
end
