class Episode < ApplicationRecord
  has_many :episode_references
  has_many :references, through: :episode_references
end
