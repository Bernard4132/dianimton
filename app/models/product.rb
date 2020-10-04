class Product < ApplicationRecord
	belongs_to :shop, optional: :true
	has_many :categoryproducts
	has_many :categories, through: :categoryproducts
	has_many :productorders
	mount_uploader :productimage, ProductimageUploader
	has_many :photos
  	accepts_nested_attributes_for :photos, :allow_destroy => true, reject_if: :all_blank
end
