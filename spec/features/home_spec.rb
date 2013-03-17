require 'spec_helper'

feature "Homepage" do
  scenario "When visiting the welcome page" do
    visit '/'
    page.should have_content "hello, world"
  end
end