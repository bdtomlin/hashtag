require 'spec_helper'

feature 'View the homepage' do
  scenario 'learn about the application' do
    visit root_path
    expect(first('head title').native.text).to eq 'Hashtag'
    expect(page).to have_css "[data-role='description']"
  end
end

