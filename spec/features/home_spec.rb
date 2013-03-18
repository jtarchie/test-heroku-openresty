require 'spec_helper'

describe "Homepage" do
  it "has a welcome page" do
    get '/'
    page.should have_content "hello, world"
  end
end