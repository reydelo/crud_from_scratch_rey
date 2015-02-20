class Status < ActiveRecord::Base
  validates :status, :user, presence: true
  validates_length_of :status, :maximum => 140, :message => "please shorten your status dear"
  validates_length_of :user, :maximum => 15, :message => "please shorten your username dear"
end
