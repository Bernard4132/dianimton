class Servtype < ApplicationRecord
	has_many :servtypeservices
	has_many :services, through: :servtypeservices
end
