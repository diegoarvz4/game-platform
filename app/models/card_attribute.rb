class CardAttribute < ApplicationRecord
  belongs_to :card
  validates :name, :value, presence: true
end
