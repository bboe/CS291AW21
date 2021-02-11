class HighScore < ApplicationRecord
  validates_presence_of :game
  validates_presence_of :score
  validates_numericality_of :score, greater_than: 10
end
