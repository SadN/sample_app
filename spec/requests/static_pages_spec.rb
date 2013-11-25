require 'spec_helper'

require 'spec_helper'

describe "Static pages" do

  describe "Home page" do

    it "has the page the title 'Greek News App'?" do
      visit '/static_pages/home'
      expect(page).to have_content('Greek News App')
    end
    it "should have the title 'Home'" do
      visit '/static_pages/home'
      expect(page).to have_title("Ellinika Nea | Home")
    end
  end

  describe "Help page" do

    it "should have the content 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_content('Help')
    end
    it "should have the title 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_title("Ellinika Nea | Help")
    end
  end

  describe "About Page" do

    it "is should habe the content 'About Us'" do
      visit '/static_pages/about'
      expect(page).to have_content('About Us')
    end
  
    it "should have the title 'About Us'" do
      visit '/static_pages/about'
      expect(page).to have_title("Ellinika Nea | About Us")
    end
  end

  describe "Contact Page" do
    it "should have the content 'Epikoinwnia'" do
      visit '/static_pages/contact'
      expect(page).to have_content('Epikoinwnia')
    end
    
    it "should have the title 'Epikoinwnia'" do
      visit '/static_pages/contact' 
      expect(page).to have_title('Ellinika Nea | Epikoinwnia')
    end
  end
end
