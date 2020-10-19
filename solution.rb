class Deck 

    attr_reader :cards

    def initialize
        @cards = []
        ranks = ["A","2","3","4","5","6","7","8","9","10","J","Q","K"]
        suits = ["Hearts","Spades","Diamonds","Clubs"]
        suits.each do |suit|
            ranks.length.times do |i|
                @cards << Card.new( ranks[i],suit)
            end
        end
    end

    def choose_card
        card = @cards.sample
        @cards.delete(card)
        card
    end

end

class Card

    attr_accessor :suit, :rank

    def initialize(suit, rank)
        @suit = suit
        @rank = rank
    end

end
