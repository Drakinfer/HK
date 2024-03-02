class Index < ApplicationRecord
  def self.get_announces
    where(important: true).order(:rank)
  end

  def self.get_indexes
    where(important: false).order(:rank)
  end
end
