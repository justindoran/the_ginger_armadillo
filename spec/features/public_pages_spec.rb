require 'rails_helper'

describe "Public pages" do

  subject { page }
  let(:base_title) { 'The Ginger Armadillo' }
  describe "Frontispiece" do
    before { visit root_path }

    it { should have_content('Elevated Texas Cuisine') }
    it { should have_title(base_title) }
  end

  describe "Book" do
    before { visit book_path }

    it { should have_content('Book Us') }
    it { should have_title(base_title + ' | Bookings') } 
  end

  describe "Community" do
    before { visit community_path }

    it { should have_content('a culinary community') }
    it { should have_title(base_title + ' | Community') } 
  end
  
  describe "Giveaway" do
    before { visit community_giveaway_path }

    it { should have_content('Community Card Giveaway') }
    it { should have_title(base_title + ' | Giveaway') } 
  end

  describe "Contact" do
    before { visit contact_path }

    it { should have_content('Contact Us') }
    it { should have_title(base_title + ' | Contacts') } 
  end

  describe "Locate" do
    before { visit locate_path }

    it { should have_content('Find Us') }
    it { should have_title(base_title + ' | Location') } 
  end

  describe "Menu" do
    before { visit menu_path }

    it { should have_content('Menu') }
    it { should have_title(base_title + ' | Menu') } 
  end

  describe "Story" do
    before { visit story_path }

    it { should have_content('Our Story') }
    it { should have_title(base_title + ' | Story') } 
  end
end
