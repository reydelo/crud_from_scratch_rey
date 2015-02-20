require 'rails_helper'

RSpec.describe Status, type: :model do
  it "creates a status with a text and user" do
    status = Status.create(status: "Shout out to my gSchool homies", user: 'ReyDeLo')
    expect(status.status).to eql 'Shout out to my gSchool homies'
    expect(status.user).to eql 'ReyDeLo'
  end

  it "require status and user fields" do
    status = Status.create(status: "I've got connections")
    expect(status).to be_invalid
  end

  it "require maximum length of user and status" do
    status = Status.create(status: "Rose went to Eve's house but she wasn't there. But Eve's father was. Alone. One thing led to another. He got 10 years. - Rachel Johnson",
    user: 'ABCDEFGHIJKLMNOP')
    expect(status).to be_invalid
  end
end
