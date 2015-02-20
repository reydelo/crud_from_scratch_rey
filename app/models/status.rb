class Status < ActiveRecord::Base
  has_many :likes
  validates :status, :user, presence: true
  validates_length_of :status, :within => 1..140
  validates_length_of :user, :within => 1..15
end
