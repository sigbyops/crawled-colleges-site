require 'spec_helper'

## STATIC PAGES
describe "StaticPages" do
  #let(:base_title) {"Welcome to CigBy"}
  subject { page }
  # HOME 
  describe "Home page" do
	before { visit root_path }
    # TITLE
    it { should have_selector('title', text: full_title('')) }
    # HEADER
    it { should have_selector 'h1',text: 'Welcome to CigBy!' }
  end
  
  # HELP
  describe "Help page" do
	before { visit help_path }
	# TITLE
	it { should have_selector('title',text: full_title('Help')) }
	# HEADER
	it { should have_selector('h1',text: 'Help') }
  end
  
  # ABOUT
  describe "About page" do
	before { visit about_path }
	# TITLE
	it { should have_selector('title',text: full_title('About')) }
	# HEADER
	it { should have_selector('h1',text:'About') }
  end
  
  # CONTACT
  describe "Contact page" do
	before { visit contact_path }
	# TITLE
	it { should have_selector('title',text:full_title('Contact')) }
	# HEADER
	it { should have_selector('h1',:text=>'Contact') }
  end
end
