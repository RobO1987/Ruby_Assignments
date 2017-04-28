require 'rails_helper'

RSpec.describe User, type: :model do
  it "must have a username" do
    user = User.new(
      username:""
    )
    expect(user).to be_invalid
  end


  it "must be unique" do
    User.create(
      username:"robertong8"
    )
    user = User.new(
    username:"robertong8"
    )
    expect(user).to be_invalid
  end


  it "must be longer than 5 characters" do
    user = User.new(
    username:"a"
    )
    expect(user).to be_invalid
    user = User.new(
    username:"abcdef"
    )
    expect(user).to be_valid
  end

end
