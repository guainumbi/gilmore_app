class EpisodeReference < ApplicationRecord
  belongs_to :reference
  belongs_to :episode
end
