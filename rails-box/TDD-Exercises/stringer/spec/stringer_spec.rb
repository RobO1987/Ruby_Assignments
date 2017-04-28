require "spec_helper"

RSpec.describe Stringer do
  it "concatenates undefined number of strings with a space" do
    expect(Stringer.spacify "Robert", "Kelsey", "Jude").to eq("Robert Kelsey Jude")
  end

  it "It shortens a string if its greater than the max length. It however returns the string as is if it's shorter or equal than max length" do
    Stringer.minify "I am just trying this out", 14
  end

  it "replaces the word identified in a string with a defined replacement word" do
    expect(Stringer.replacify "I can't do this", "can't", "can").to eq("I can do this")
  end

  it "Iterates over a string and adds each word into an array, then returning back that aray" do
    expect(Stringer.tokenize "I am Robert").to eq(["I", "am", "Robert"])
  end


  it "Removes each instance of the second parameter wtihin the original string" do
    expect(Stringer.removify "I'm not a developer", "not").to eq("I'm a developer")
  end

end
