require 'spec_helper'

describe "User pages" do

  subject { page }

  describe "signup page" do
    before {visit '/users/new'}

    it { should have_selector('h1', :text => 'User') }
    it { should_not have_selector 'title', text: '| Sign Up' }
  end
end