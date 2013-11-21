require 'spec_helper'

describe "creating a project" do
  let(:user) {create(:user)}
  context "when not signed in" do
    before(:each) do
      visit new_project_path
    end
    it "should not work" do
      expect(page).to have_content("You need to sign in or sign up before continuing.")
      expect(current_path).to eq new_user_session_path
    end
  end
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
      context "when the form is submitted" do
        before(:each) do
          fill_in "Title", :with => "Yadayadayada"
          fill_in "Description", :with => "Clicked"
          click_button "Create Project"
        end
        it "should work" do
          expect(page).to have_content("Project Created")
        end
      end
    end
  end
end
