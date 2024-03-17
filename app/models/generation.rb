class Generation < ApplicationRecord
  has_many :type

  scope :by_rank, -> { order(rank: :asc) }
end
