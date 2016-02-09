class User < ActiveRecord::Base
  has_one :guest :host
end
