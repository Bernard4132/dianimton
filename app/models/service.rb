class Service < ApplicationRecord
	default_scope -> { order('created_at DESC') }
	has_many :serviceorders
	has_many :servtypeservices
	has_many :servtypes, through: :servtypeservices
	mount_uploader :serviceimage, ServiceimageUploader
	has_many :photos
  	accepts_nested_attributes_for :photos, :allow_destroy => true, reject_if: :all_blank
end
