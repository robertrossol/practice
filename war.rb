# Exercise Type: OOP
# Create the card game War using OOP.
# Make sure that:
# You have classes name Card, Deck, PlayerHand (the set of cards each player is
# dealt), and Game. You may use additional classes as well.
# Start with Card, then Deck, then PlayerHand before moving onto the actual Game

class Player
  attr_accessor :deck
  attr_reader   :name

  def initialize(name)
    @name = name
    @deck = []
  end
end

class Card
  def initialize(value)
    @value = value
  end
  def value
    @value
  end
end

class Deck
  def initialize
    @cards = []
    4.times do
      x = 1
      13.times do
        card = Card.new(x)
        x += 1
        @cards << card
      end
    end
    shuffle
  end

  def shuffle
    @cards.shuffle!
  end
end

class PlayerHand
  def intialize
    @hand = []
  end
end

class Play
  def initialize
    @player1 = Player.new('Bob')
    @player2 = Player.new('Jane')

    deck = Deck.new.shuffle
    # shuffle!(deck)
    # @player1.deck = PlayerHand.new
    # @player2.deck = PlayerHand.new
    # while deck.empty? == false
    deck.pop(26).each do |card|
      @player1.deck << card
    end
    deck.pop(26).each do |card|
      @player2.deck << card
    end
  end
end

class Game
end

game = Play.new

# deck = Deck.new
# puts deck
