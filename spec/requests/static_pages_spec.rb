require 'spec_helper'

describe "Static pages" do

let(:const_title) {"Ellinika Nea | "}

  describe "Home page" do

    it "has the page the title 'Greek News App'" do
      visit root_path
      expect(page).to have_content('Greek News App')
    end
    it "should have the title 'Home'" do
      visit root_path
      expect(page).to have_title(const_title + "Home")
    end
  end

  describe "Help page" do

    it "should have the content 'Help'" do
      visit help_path
      expect(page).to have_content('Help')
    end
    it "should have the title 'Help'" do
      visit help_path
      expect(page).to have_title(const_title + "Help")
    end
  end

  describe "About Page" do

    it "is should habe the content 'About Us'" do
      visit about_path
      expect(page).to have_content('About Us')
    end
  
    it "should have the title 'About Us'" do
      visit about_path
      expect(page).to have_title(const_title + "About Us")
    end
  end

  describe "Contact Page" do
    it "should have the content 'Epikoinwnia'" do
      visit contact_path
      expect(page).to have_content('Epikoinwnia')
    end
    
    it "should have the title 'Epikoinwnia'" do
      visit contact_path 
      expect(page).to have_title(const_title + "Epikoinwnia")
    end
  end
end
