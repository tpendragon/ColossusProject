require 'spec_helper'

describe "browsing projects" do
  context "when logged in" do
    let(:user) {create(:user)}
    let(:create_projects) {nil}
    before(:each) do
      create_projects
      visit root_path
      click_link "Login"
      fill_in "Email", :with => user.email
      fill_in "Password", :with => user.password
      click_button "Sign in"
    end
    it "should show a browse project button" do
      expect(page).to have_content("Browse Projects")
      expect(page).to have_link("Browse Projects")
    end
    context "when there are projects" do
      let(:create_projects) {5.times {create(:project, :user => user)}}
      before(:each) do
        click_link "Browse Projects"
      end
      it "should show them all" do
        expect(page).to have_content(Project.first.title)
      end
    end
  end
end
