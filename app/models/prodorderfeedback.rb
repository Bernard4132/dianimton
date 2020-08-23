class Prodorderfeedback < ApplicationRecord
	belongs_to :productorder
	belongs_to :user
end
