require 'spec_helper'

## STATIC PAGES
describe "StaticPages" do
  let(:base_title) {"Welcome to CigBy"}
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
		page.should have_selector('title', :text=>"#{base_title} | Home")
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
		page.should have_selector('title',:text=>"#{base_title} | Help")
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
		page.should have_selector('title',:text=>"#{base_title} | About")
	end
	# HEADER
	it "should have the h1 'About'" do
		visit '/static_pages/about'
		page.should have_selector('h1',:text=>'About')
	end
  end
  
  # CONTACT
  describe "Contact page" do
	# TITLE
	it "should have the title 'Contact'" do
		visit '/static_pages/contact'
		page.should have_selector('title',:text=>"#{base_title} | Contact")
	end
	# HEADER
	it "should have the h1 'Contact'" do
		visit '/static_pages/contact'
		page.should have_selector('h1',:text=>'Contact')
	end
  end
end
