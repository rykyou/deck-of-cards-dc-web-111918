require 'pry'

class Deck
  attr_reader :cards

  def initialize
    @cards = []
    52.times do
      new_card = Card.new
      # if !(@cards.include?(new_card))
        @cards << new_card
      # end
    end
  end

  def choose_card
    sample = @cards.sample
    @cards.delete_if { |x| x == sample}
    puts "#{sample.rank} #{sample.suit}"
    puts "Current count of deck is #{@cards.count}"
    sample
  end
end


class Card
  attr_reader :rank, :suit

  @@suit = ["Hearts", "Clubs", "Diamonds", "Spades"]
  @@rank = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]

  def initialize(suit=@@suit.sample, rank=@@rank.sample)
    @suit = suit
    @rank = rank
  end
end

deck1 = Deck.new
puts deck1.cards.count

deck1.choose_card
puts deck1.cards.count
