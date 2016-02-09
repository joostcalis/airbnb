class Listing < ActiveRecord::Base
  has_many :hosts
  has_many :reservations 
end
