require 'pry'

class Card
  attr_reader :rank, :suit

  @@suit = ["Hearts", "Clubs", "Diamonds", "Spades"]
  @@rank = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]

  def initialize
    @suit = @@suit.sample
    @rank = @@rank.sample
  end
end
