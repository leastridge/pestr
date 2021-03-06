require "spec_helper"

feature "signing up" do
  scenario "successful signup" do
    visit '/'
    click_link 'Sign up'
    fill_in "Name", with: "Lauren"
    fill_in "Phone", with: "206.369.4402"
    fill_in "Email", with: "user@pestr.com"
    fill_in "Password", with: "password"
    fill_in "Password confirmation", with: "password"
    click_button "Sign up"
    message = "Please open the link to activate your account."
    page.should have_content(message)
  end
end
