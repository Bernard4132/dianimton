class Productorder < ApplicationRecord
	default_scope -> { order('created_at DESC') }
	belongs_to :user
	belongs_to :product
	has_many :prodorderfeedbacks
end
