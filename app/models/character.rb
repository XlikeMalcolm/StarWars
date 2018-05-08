class Character < ApplicationRecord
  belongs_to :episode
  validates :name, presence: true
  validates :episode_id, presence: true
end
