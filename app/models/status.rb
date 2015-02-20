class Status < ActiveRecord::Base
  validates :status, :user, presence: true
  validates_length_of :status, :within => 1..140, :too_long => "please shorten your status dear", :too_short => "please say something, ANYTHING, in your status dear"
  validates_length_of :user, :within => 1..15, :too_short => "please add another character dear", :too_long => "please pick a shorter username dear"
end
