class Advert < ApplicationRecord
  belongs_to :category
  belongs_to :condition
  belongs_to :city
  belongs_to :user
  has_one :province, through: :city
  default_scope -> { order(created_at: :desc) }

  mount_uploader :image, ImageUploader
  validates :title, presence: true, length: { maximum: 144 }
  validates :price, presence: true
  validates :category_id, presence: true
  validates :condition_id, presence: true
  validates :city_id, presence: true
  validates :user_id, presence: true
end
