require 'spec_helper'

describe "logging in" do
  let(:user) {create(:user)}
  context "when on the front page" do
    before(:each) do
      visit root_path
    end
    it "should have a login link" do
      expect(page).to have_link("Login")
    end
    context "when I click the login link" do
      before(:each) do
        click_link "Login"
      end
      it "should show a sign in page" do
        expect(page).to have_button("Sign in")
      end
      context "when I log in" do
        before(:each) do
          fill_in "Email", :with => user.email
          fill_in "Password", :with => user.password
          click_button "Sign in"
        end
        context "with a user that exists" do
          it "should show a confirmation" do
            expect(page).not_to have_link("Login")
          end
          it "should show the logged in username" do
            expect(page).to have_content("Logged in as #{user.email}")
          end
        end
        context "with an unknown user" do
          let(:user) {build(:user)}
          it "should throw an error" do
            expect(page).to have_content("Invalid email or password")
          end
        end
      end
    end
  end
end
