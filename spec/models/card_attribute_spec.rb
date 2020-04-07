require 'rails_helper'

RSpec.describe CardAttribute, type: :model do 

  let!(:deck) { Deck.create(title: 'Basic Deck #1') }
  let!(:card) { Card.create(title: 'Monster Card', description: 'Desc Temp', deck_id: deck.id) }
  let!(:card_attribute) { CardAttribute.create(card_id: card.id) }

  it 'should be valid when card, name and value are provided' do
    card_attribute.name = 'ATK'
    card_attribute.value = '1000'
    expect(card_attribute).to be_valid
  end

  it 'should not be valid when no name is provided' do
    card_attribute.name = nil
    expect(card_attribute).not_to be_valid
  end

  it 'should not be valid when no value is provided' do
    card_attribute.name = 'Monster Card'
    card_attribute.value = nil
    expect(card_attribute).not_to be_valid
  end

  it 'should not be valid when no card is provided' do
    card_attribute.card_id = nil
    expect(card_attribute).not_to be_valid
  end
end