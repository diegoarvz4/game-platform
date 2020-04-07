# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


deck = Deck.create(title: 'Football')

10.times do 
  card = Card.create do |card|
    card.deck_id = deck.id
    card.title = Faker::Superhero.name
    card.description = Faker::Quotes::Shakespeare.hamlet_quote
  end

  CardAttribute.create do |card_attriute|
    card_attriute.card_id = card.id
    card_attriute.name = 'CLSN'
    card_attriute.value = (rand(10) + 1).to_s
  end

  CardAttribute.create do |card_attriute|
    card_attriute.card_id = card.id
    card_attriute.name = 'BLCK'
    card_attriute.value = (rand(10) + 1).to_s
  end

  CardAttribute.create do |card_attriute|
    card_attriute.card_id = card.id
    card_attriute.name = 'TEAM'
    card_attriute.value = (rand(10) + 1).to_s
  end

end