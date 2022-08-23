require 'rails_helper'

RSpec.describe 'the User show page' do
  it 'shows the users name at the top of the page' do
    user1 = User.create!(name: 'Geraldo', email: 'geraldo@trashtv.com')
    user2 = User.create!(name: 'Maury', email: 'maury@trashtv.com')
    user3 = User.create!(name: 'Jenny', email: 'jenny@trashtv.com')

    visit user_path(user1)

    expect(page).to have_content("Geraldo's Dashboard")
  end
end
