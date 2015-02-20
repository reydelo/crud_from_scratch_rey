require 'rails_helper'

describe 'user can CRUD statuses' do

  scenario 'user can create a status' do
    visit '/'
    click_on "New Status Update"
    fill_in 'status[status]', with: "Here's my message"
    fill_in 'status[user]', with: "ReyDeLo"
    click_on "Create Status"

    expect(page).to have_content("Here's my message")
    expect(page).to have_content("ReyDeLo")
    expect(page).to have_content("Status has been posted!")
  end

end
