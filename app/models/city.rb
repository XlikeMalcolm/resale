class City < ApplicationRecord
  has_many :adverts
  belongs_to :province
  validates :name, presence: true
  validates :province_id, presence: true
end
