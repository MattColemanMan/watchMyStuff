class User < ActiveRecord::Base
	has_many :watches
	validates :rating,
		numericality: {greater_than_or_equal_to: 0,
						less_than_or_equal_to: 5}
end
