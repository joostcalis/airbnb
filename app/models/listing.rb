class Listing < ActiveRecord::Base
  belongs_to :host
  has_many :reservations
end
