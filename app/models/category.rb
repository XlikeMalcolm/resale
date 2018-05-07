class Category < ApplicationRecord
	has_many :adverts
	mount_uploader :image, ImageUploader

	validates :name, presence: true
	validates :image, presence: true
	validates :icon, presence: true
end
