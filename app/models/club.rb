class Club < ActiveRecord::Base
	has_many :events
	has_many :posts
end
