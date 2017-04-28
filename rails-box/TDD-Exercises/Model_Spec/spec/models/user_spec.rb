require 'rails_helper'
RSpec.describe User, type: :model do
  context "With valid attributes" do
    it "should save" do
      user = User.new(
      first_name: 'robert',
      last_name: 'ong',
      email: 'robert@gmail.com'
      )
      expect(user).to be_valid
    end
  end

  context "With invalid attributes" do
    it "should not save if first_name field is blank" do
      user = User.new(
        first_name: "",
        last_name: "ong",
        email: 'robert@gmail.com')
      expect(user).to be_invalid
    end

    it "should not save if last_name field is blank" do
      user = User.new(
      first_name: "robert",
      last_name: "",
      email: 'robert@gmail.com')
      expect(user).to be_invalid
    end

    it "should not save if email already exists" do
      User.create(
      first_name: "robert",
      last_name: "ong",
      email: "robert@gmail.com")

      user = User.new(
      first_name: "bobby",
      last_name: "ong",
      email: "robert@gmail.com"
      )
      expect(user).to be_invalid
    end

    it "should contain a valid email" do
      user = User.new(
      first_name: "robert",
      last_name: "ong",
      email: "bob"
      )
      expect(user).to be_invalid
    end
  end
end
