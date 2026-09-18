class Game < ApplicationRecord
  validates :title, presence: true
  validates :genre, presence: true
  validates :rating, presence: true,
                     numericality: { only_integer: true, in: 1..5 }
end