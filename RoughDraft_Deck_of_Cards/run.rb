require_relative "./card.rb"
require_relative "./deck.rb"
require "pry"


# suit = ["Hearts", "Clubs", "Diamonds", "Spades"]
# rank = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]
# deck = {}
# suit.each do |each_suit|
#   rank.each do |each_rank|
#     if deck[each_suit]
#       deck[each_suit] << each_rank
#     else
#       deck[each_suit] = []
#       deck[each_suit] << each_rank
#     end
#   end
# end
# puts deck

# def choose_card(deck)
#   sample_key = deck.keys.sample
#   sample_value = deck[sample_key].sample
#   deck[sample_key].delete_if {|v| v == sample_value}
#   puts "Your card is #{sample_value} of #{sample_key}"
# end

# puts choose_card(deck)
# puts deck

deck1 = Deck.new
deck1.choose_card
deck1.choose_card
deck1.choose_card
