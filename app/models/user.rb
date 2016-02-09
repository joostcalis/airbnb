class User < ActiveRecord::Base
	has_one :host
	has_one :guest
end
