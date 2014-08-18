require 'spec_helper'

describe "Main pages" do

  describe "Home page" do

    it "should have the content 'Track My Mixes'" do
      visit '/main/home'
      expect(page).to have_content('Track My Mixes')
    end

    it "should have the base title" do
      visit '/main/home'
      expect(page).to have_title("Track My Mixes")
    end

    it "should not have a custom page title" do
      visit '/main/home'
      expect(page).not_to have_title('| Home')
    end
  end

  describe "Help page" do

    it "should have the content 'Help'" do
      visit '/main/help'
      expect(page).to have_content('Help')
    end

    it "should have the title 'Track My Mixes | Help'" do
      visit '/main/help'
      expect(page).to have_title("Track My Mixes | Help")
    end
  end

  describe "About page" do
    it "should have the content 'About Us'" do
      visit '/main/about'
      expect(page).to have_content('About Us')
    end

    it "should have the title 'Track My Mixes | About Us'" do
      visit '/main/about'
      expect(page).to have_title("Track My Mixes | About Us")
    end
  end

  describe "Contact page" do
    it "should have the content 'Contact Us'" do
      visit '/main/contact'
      expect(page).to have_content('Contact Us')
    end

    it "should have the title 'Track My Mixes | Contact Us'" do
      visit '/main/contact'
      expect(page).to have_title("Track My Mixes | Contact Us")
    end
  end

  describe "Blog page" do
    it "should have the content 'Blog'" do
      visit '/main/blog'
      expect(page).to have_content('Blog')
    end

    it "should have the title 'Track My Mixes | Blog'" do
      visit '/main/blog'
      expect(page).to have_title("Track My Mixes | Blog")
    end
  end
end
