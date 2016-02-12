class Listing < ActiveRecord::Base
  mount_uploader :image, CabinimageUploader
  belongs_to :user
  has_many :reservations
  accepts_nested_attributes_for :user
  mount_uploader :artistphoto
end
