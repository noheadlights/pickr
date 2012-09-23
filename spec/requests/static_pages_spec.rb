require 'spec_helper'

describe "StaticPages" do

  subject { page }

  describe "When accessing the home page" do
    before { visit root_path }
    it { should have_selector('h1', text: 'Welcome to Pickr')}
    it { should have_link('sign in')}
    it { should have_link('Please register', href: signup_path)}
  end
  describe "when clicking the register link" do
    before do
      visit root_path
      click_link "Please register"
    end
    it { should have_selector('h1', text: 'Become')}
  end
  describe "when visiting the signup page" do
    before { visit signup_path }
    it { should have_selector('form')}
    it { should have_selector('input', type: 'submit')}
  end
end
