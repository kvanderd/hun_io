require 'spec_helper'

describe "Users" do
	let!(:user) { FactoryGirl.create(:user) }

	before(:each) do
		visit root_path
		fill_in 'user[email]',     with: user.email
		fill_in 'user[password]',  with: user.password
		click_button('sign in')
	end

	it "should be able to log in without errors" do
		current_path.should == root_path
		page.should have_link("Sign out")
	end

	it "should greet the new user by email" do
		page.should have_link(user.email)
	end

	it "should not have link Create Account" do
		page.should_not have_link("Create Account")
	end
end