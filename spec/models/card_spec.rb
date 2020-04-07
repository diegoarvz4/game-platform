require 'rails_helper'

RSpec.describe Card, type: :model do

  let!(:deck) { Deck.create(title: 'Deck #1') }
  let!(:card) { Card.create(title: 'Monster Card', description: 'Desc Temp', deck_id: deck.id) }

  it 'should be valid with title, description and deck' do
    expect(card).to be_valid
  end

  it 'should not be valid when no title is provided' do
    card.title = nil
    expect(card).not_to be_valid
  end

end