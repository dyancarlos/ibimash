class Candidate < ApplicationRecord
  scope :random, -> { order("RANDOM()").limit(1).first }
  scope :not_id, ->(id) { where.not(id: id) }
  scope :special, ->(special) { where(special: special) }
end
