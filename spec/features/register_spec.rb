require 'spec_helper'

describe "registering" do
  context "when I go to the home page" do
    before(:each) do
      visit root_path
    end
    it "should have a register link" do
      expect(page).to have_link("Register")
    end
    context "when I click the register link" do
      before(:each) do
        click_link "Register"
      end
      it "should show a registration form" do
        expect(page).to have_button "Sign up"
      end
      context "when the form is filled out" do
        before(:each) do
          fill_in "Email", :with => "blablabla@blabla.org"
          fill_in "Password", :with => "vagrantvagrant"
          fill_in "Password confirmation", :with => "vagrantvagrant"
          click_button "Sign up"
        end
        it "should register the user" do
          expect(page).to have_content("Logged in as blablabla@blabla.org")
          expect(User.first.email).to eq "blablabla@blabla.org"
        end
      end
    end
  end
end
