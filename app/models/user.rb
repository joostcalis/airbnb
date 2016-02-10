class User < ActiveRecord::Base
  has_many :listings
  has_many :reservations
end
