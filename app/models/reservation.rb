class Reservation < ActiveRecord::Base
  belongs_to :guest
  belongs_to :listing
end
