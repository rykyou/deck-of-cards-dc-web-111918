require "pry"

class Deck
  attr_reader :cards

  def initialize
    @cards = []
    52.times do
      new_card = Card.new
      if !(@cards.include?(new_card))
        @cards << new_card
      end
    end
  end

  def choose_card
    sample = @cards.sample
      @cards.delete_if { |x| x == sample}
    puts "#{sample.rank} #{sample.suit}"
    puts "Current count of deck is #{@cards.count}"
  end
end
