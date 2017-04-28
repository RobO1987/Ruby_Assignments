require 'rails_helper'

RSpec.describe Message, type: :model do
  it "must have a message" do
    message = Message.new(
    message:""
    )
    expect(message).to be_invalid
  end

  it "must be longer than 10 characters" do

    message = Message.new(
    message:"a"
    )
    expect(message).to be_invalid

    message = Message.new(
    message:"This is a 10 character string"
    )
    expect(message).to be_valid
  end

end
