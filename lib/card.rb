
# card.rb

VALID_SUITS = [:hearts, :diamonds, :clubs, :spades]
class Card
  attr_reader :value, :suit

  def initialize(value, suit)
    unless VALID_SUITS.include? suit
      raise ArgumentError, "Invalid Suit"
    end

    if value < 1 || value > 13
      raise ArgumentError, "#{value} is an invalid value"
    end
    @value = value
    @suit = suit
    

  end

  def to_s

    card_text_values = {
        1 => "Ace",
        11 => "Jack",
        12 => "Queen",
        13 => "King"
    }

    if card_text_values[value].nil?
      card_text_values[value] = value
    end

    return "#{card_text_values}[value] of #{suit.to_s}"
  end

end
