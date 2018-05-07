class Province < ApplicationRecord
	has_many :cities
	has_many :adverts, through: :cities
	validates :name, presence: true
end
