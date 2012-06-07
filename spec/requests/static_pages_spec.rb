require 'spec_helper'

## STATIC PAGES
describe "StaticPages" do
  subject { page }
  shared_examples_for "all static pages" do
	it { should have_selector('title', text: full_title(page_title)) }
	it { should have_selector('h1', text: heading) }
  end
  
  # HOME 
  describe "Home page" do
	before { visit root_path }
    # TITLE
    let(:page_title) {''}
    # HEADER
    let(:heading) {'Welcome to CigBy!'}
    #it_should_behave_like "all static pages"
    it { should_not have_selector 'title', text: '| Home' }
    
    describe "for signed-in users" do
      let(:user) { FactoryGirl.create(:user) }
      before do
        FactoryGirl.create(:micropost, user: user, content: "Lorem ipsum")
        FactoryGirl.create(:micropost, user: user, content: "Dolor sit amet")
        sign_in user
        visit root_path
      end

      it "should render the user's feed" do
        user.feed.each do |item|
          page.should have_selector("li##{item.id}", text: item.content)
        end
      end
      
      # test following/follower statistics on Home page
      describe "follower/following counts" do
        let(:other_user) { FactoryGirl.create(:user) }
        before do
          other_user.follow!(user)
          visit root_path
        end

        it { should have_link("0 following", href: following_user_path(user)) }
        it { should have_link("1 followers", href: followers_user_path(user)) }
      end
    end
  end
  
  # HELP
  describe "Help page" do
	before { visit help_path }
	# TITLE
	let(:page_title) {'Help'}
	# HEADER
	let(:heading) {'Help'}
	it_should_behave_like "all static pages"
  end
  
  # ABOUT
  describe "About page" do
	before { visit about_path }
	# TITLE
	let(:page_title) {'About'}
	# HEADER
	let(:heading) {'About'}
	it_should_behave_like "all static pages"
  end
  
  # CONTACT
  describe "Contact page" do
	before { visit contact_path }
	# TITLE
	let(:page_title) {'Contact'}
	# HEADER
	let(:heading) {'Contact'}
	it_should_behave_like "all static pages"
  end
  
  ## LINK TEST
  it "should have the right links on the layout" do
    visit root_path
    click_link "About"
    page.should have_selector 'title', text: full_title('About')
    click_link "Help"
    page.should have_selector 'title', text: full_title('Help')
    click_link "Contact"
    page.should have_selector 'title', text: full_title('Contact')
    click_link "Home"
    #click_link "Sign up now!"
    #page.should have_selector 'title', text: full_title('Sign up')
    #click_link "Sign in"
    #page.should have_selector 'title', text: full_title('Sign up')
    click_link "Home"
    click_link "CigBy"
  end
end
