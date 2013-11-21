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
      expect(page).to have_title("News Ellada | Home")
    end
  end

  describe "Help page" do

    it "should have the content 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_content('Help')
    end
    it "should have the title 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_title("News Ellada | Help")
    end
  end

  describe "About Page" do

    it "is should habe the content 'About Us'" do
      visit '/static_pages/about'
      expect(page).to have_content('About Us')
    end
  end
    it "should have the title 'About Us'" do
      visit '/static_pages/about'
      expect(page).to have_title("News Ellada | About Us")
end
