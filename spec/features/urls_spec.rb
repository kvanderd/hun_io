require 'spec_helper'

describe "urls" do
	let!(:url) { FactoryGirl.create(:url) }

	before(:each) do
		visit root_path
		fill_in "url[long]",  with: url.long
		click_button("shorten!")
	end

	it "should show the long url on the page" do
		page.has_content?(url.long)
	end

	it "should show the short url on the page" do
		page.has_content?(url.short)
	end
end