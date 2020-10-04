class Photo < ApplicationRecord
	belongs_to :service, optional: true
	belongs_to :product, optional: true
	mount_uploader :objpicture, ObjpictureUploader
end
