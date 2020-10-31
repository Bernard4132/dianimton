class Photo < ApplicationRecord
	# include Mongoid::Document
 #  include Mongoid::Timestamps
 #  include Mongoid::Paranoia
 #  include Mongoid::Attributes::Dynamic
 #  include Rails.application.routes.url_helpers
  
	belongs_to :service, optional: true
	belongs_to :product, optional: true
	mount_uploader :objpicture, ObjpictureUploader
end
