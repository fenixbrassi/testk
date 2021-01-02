class ShortestPath < ApplicationRecord
  belongs_to :user
  has_many :visits
end
