class User < ActiveRecord::Base
  has_one :host
  has_one :guest
  accepts_nested_attributes_for :guest
  accepts_nested_attributes_for :host
end
