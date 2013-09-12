require 'spec_helper'

describe "Static pages" do
	
	let(:base_title) {"Ruby on Rails Tutorial Sample App"}
	
	describe "Home page" do
		it "should have the content 'Sample App'" do
			# Run the generator again with the --webrat flag if you want to use webrat methods/matchers
			visit '/static_pages/home'
			expect(page).to have_content('Sample App')
		end
		
		it "should have the right title" do
			visit '/static_pages/home'
			expect(page).not_to have_title(" | Home")
		end
	end

  
	describe "Help Page" do
		it "should have content 'help'" do
			visit '/static_pages/help'
			expect(page).to have_content('Help')
		end
		
		it "should have the right title" do
			visit '/static_pages/help'
			expect(page).to have_title("#{base_title} | Help")
		end
	end

	
	describe "about page" do
		it "should have content 'About US'" do
			visit '/static_pages/about'
			expect(page).to have_content('About Us')
		end
		
		it "should have the right title" do
			visit '/static_pages/about'
			expect(page).to have_title("#{base_title} | About Us")
		end
	end
	
	describe "contact page" do
		it "should have the right title" do
			visit '/static_pages/contact'
			expect(page).to have_title("#{base_title} | Contact")
		end
	end
end
