# Shuffle a deck of cards
deck1 = [
        'ace of spades', 'ace of clubs', 'ace of diamonds', 'ace of hearts',
        '2 of spades', '2 of clubs', '2 of diamonds', '2 of hearts',
        '3 of spades', '3 of clubs', '3 of diamonds', '3 of hearts',
        '4 of spades', '4 of clubs', '4 of diamonds', '4 of hearts',
        '5 of spades', '5 of clubs', '5 of diamonds', '5 of hearts',
        '6 of spades', '6 of clubs', '6 of diamonds', '6 of hearts',
        '7 of spades', '7 of clubs', '7 of diamonds', '7 of hearts',
        '8 of spades', '8 of clubs', '8 of diamonds', '8 of hearts',
        '9 of spades', '9 of clubs', '9 of diamonds', '9 of hearts',
        '10 of spades', '10 of clubs', '10 of diamonds', '10 of hearts',
        'jack of spades', 'jack of clubs', 'jack of diamonds', 'jack of hearts',
        'queen of spades', 'queen of clubs', 'queen of diamonds', 'queen of hearts',
        'king of spades', 'king of clubs', 'king of diamonds', 'king of hearts'
        ]
def shuffle_deck(deck)
  # cut deck into 2 separate arrays
  n = deck.length # => always 52
  cut = n/2 # => always 26
  half1 = deck[0..cut -1]
  half2 = deck[(cut)..-1]
  # pop off random num of cards between (1-4) and push into shuffed_deck
  shuffled_deck = []
  while shuffled_deck.length != 52
    rand_num_of_cards_into_shuffling(shuffled_deck, half1)
    rand_num_of_cards_into_shuffling(shuffled_deck, half2)
  end
  return shuffled_deck
end

def rand_num_of_cards_into_shuffling(shuffled_deck, deck_half)
  num_of_rand_cards = rand(1..3)
  num_of_rand_cards.times do
    if num_of_rand_cards <= deck_half.length
      set = deck_half.pop
      shuffled_deck << set
    end
  end
end

p shuffle_deck(deck1)
