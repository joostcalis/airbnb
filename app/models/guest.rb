class Guest < ActiveRecord::Base
  belongs_to :user
  has_many :reservation
end
