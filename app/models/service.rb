class Service < ApplicationRecord
	belongs_to :servtype
	has_many :serviceorders
end
