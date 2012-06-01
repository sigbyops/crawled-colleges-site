require 'spec_helper'

## STATIC PAGES
describe "StaticPages" do
  # HOME 
  describe "Home page" do
	# CONTENT
  	#it "should have the content 'CigBy'" do
  	#	visit '/static_pages/home'
  	#	page.should have_content('CigBy')
    #end
    # TITLE
    it "should have the title 'Home'" do
		visit '/static_pages/home'
		page.should have_selector('title', :text=>"Welcome to CigBy | Home")
    end
    # HEADER
    it "should have the h1 'Home'" do
		visit '/static_pages/home'
		page.should have_selector('h1',:text=>'Home')
    end
  end
  
  # HELP
  describe "Help page" do
	# TITLE
	it "should have the title 'Help'" do
		visit '/static_pages/help'
		page.should have_selector('title',:text=>"Welcome to CigBy | Help")
	end
	# HEADER
	it "should have the h1 'Help'" do
		visit '/static_pages/help'
		page.should have_selector('h1',:text=>'Help')
	end
  end
  # ABOUT
  describe "About page" do
	# TITLE
	it "should have the title 'About'" do
		visit '/static_pages/about'
		page.should have_selector('title',:text=>"Welcome to CigBy | About")
	end
	# HEADER
	it "should have the h1 'About Us'" do
		visit '/static_pages/about'
		page.should have_selector('h1',:text=>'About')
	end
  end
end
