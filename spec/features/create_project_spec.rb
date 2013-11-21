require 'spec_helper'

describe "creating a project" do
  let(:user) {create(:user)}
  context "when signed in" do
    before(:each) do
      visit root_path
      click_link "Login"
      fill_in "Email", :with => user.email
      fill_in "Password", :with => user.password
      click_button "Sign in"
    end
    it "should have a new project link" do
      expect(page).to have_link("Create Project")
    end
    context "when the button is clicked" do
      before(:each) do
        click_link "Create Project"
      end
      it "should show a create project form" do
        expect(page).to have_field("Title")
      end
    end
  end
end
