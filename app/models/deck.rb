class Deck < ApplicationRecord
  validates :title, presence: true
  has_many :cards
end
