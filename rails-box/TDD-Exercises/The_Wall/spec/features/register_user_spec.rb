require 'rails_helper'

feature "When logging in"  do
  scenario "you current path should successfully equal messages_path" do

    visit "/users/index"
    fill_in "username", with: "robertong8"
    click_button "Sign In"
    expect(current_url).to eq('http://www.example.com/messages')
  end

  scenario "current path should redirect back to the index page and also contain an error message if unsuccessful" do

    visit "/users/index"
    fill_in "username", with: ""
    click_button "Sign In"
    expect(current_url).to eq('http://www.example.com/users/index')
  end

end
