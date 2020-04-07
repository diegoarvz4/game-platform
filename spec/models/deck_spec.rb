require 'rails_helper'

RSpec.describe Deck, type: :model do 

  let!(:deck) { Deck.create(title: 'Basic Deck #1') }

  it 'should be valid when having title' do
    expect(deck).to be_valid
  end

  it 'should not be valid when no title is provided' do
    deck.title = nil
    expect(deck).not_to be_valid

  end

end