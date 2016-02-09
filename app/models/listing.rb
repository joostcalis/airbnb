class Listing < ActiveRecord::Base
  has_many :hosts :reservations
  end
