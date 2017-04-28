require_relative "apple_tree"
RSpec.describe Apple_tree do

  before(:each) do
    @apple_tree = Apple_tree.new
  end

  context "below age of 3" do
    it "has an age attribute with getter and setter methods" do
      @apple_tree.age = 10
      expect(@apple_tree.age).to eq(10)
    end


    it "has a height attribute with only a getter method" do
      expect(@apple_tree.height).to eq(5)
    end

    it "has a count attribute with only a getter method" do
      expect(@apple_tree.apples).to eq(100)
    end

    it "allows me to add one year to the age attribute, increase the height by 10%, and raise it's apples by 2 counts" do
      @apple_tree.year_gone_bye
      puts "age should be #{@apple_tree.age}, height should be #{@apple_tree.height}, number of apples should be #{@apple_tree.apples}"
    end

    it "should not grow apples for the first three years of it's life" do
      @apple_tree.age = 2
      @apple_tree.age_verification
    end

    it "allows me to pick apples off the tree" do
      @apple_tree.pick_apples 50
    end

    it "allows me to pick apples off the tree after I picked some apples off the tree" do
      @apple_tree.pick_apples 25
    end

    it "should block me from growing apples if the tree is older than 10" do
      @apple_tree.age = 4
      @apple_tree.age_verification
    end
  end
end


### Tree will have 3 states.
# Tree below age of 3
# Tree between the ages of 3 & 7
# Tree above age of 10.
