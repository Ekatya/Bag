class Product < ActiveRecord::Base

	belongs_to :category
	belongs_to :subcategory

	mount_uploader :picture, PictureUploader
	mount_uploader :picture1, PictureUploader
	mount_uploader :picture2, PictureUploader

	belongs_to :color
	#validates_presence_of :name, :subcategory_id, :category_id, 

end
