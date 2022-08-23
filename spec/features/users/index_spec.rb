require 'rails_helper'

RSpec.describe 'the landing page' do
  it 'shows a list of all users as links to their dashboard' do
    user1 = User.create!(name: 'Geraldo', email: 'geraldo@trashtv.com')
    user2 = User.create!(name: 'Maury', email: 'maury@trashtv.com')
    user3 = User.create!(name: 'Jenny', email: 'jenny@trashtv.com')

    visit root_path

    within "#user-#{user1.id}" do
      expect(page).to have_link("geraldo@trashtv.com's Dashboard")
    end

    within "#user-#{user2.id}" do
      expect(page).to have_link("maury@trashtv.com's Dashboard")
    end

    within "#user-#{user3.id}" do
      expect(page).to have_link("jenny@trashtv.com's Dashboard")
    end

    click_link('Geraldo')
    expect(current_path).to eq("/users/#{user1.id}")
  end

  it 'has a button to create a new user' do
    user1 = User.create!(name: 'Geraldo', email: 'geraldo@trashtv.com')
    user2 = User.create!(name: 'Maury', email: 'maury@trashtv.com')
    user3 = User.create!(name: 'Jenny', email: 'jenny@trashtv.com')

    visit root_path

    expect(page).to have_button('Create a New User')
  end
end
