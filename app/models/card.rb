class Card < ApplicationRecord
  belongs_to :deck
  validates :title, presence: true
  has_many :card_attributes
end
