class Reference < ApplicationRecord
  has_many :episode_references
  has_many :episodes, through: :episode_references
end
