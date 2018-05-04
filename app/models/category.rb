class Category < ApplicationRecord
	mount_uploader :image, ImageUploader

	validates :name, presence: true
	validates :image, presence: true
	validates :icon, presence: true
end
