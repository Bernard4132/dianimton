class Product < ApplicationRecord
	belongs_to :shop, optional: :true
	has_many :categoryproducts
	has_many :categories, through: :categoryproducts
	has_many :productorders
end
