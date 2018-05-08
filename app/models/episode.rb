class Episode < ApplicationRecord
  validates :title, presence: true
  validates :poster, presence: true
  validates :hero_image, presence: true

  has_many :characters
end
