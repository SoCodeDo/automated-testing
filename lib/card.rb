
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

    if value == 1
      return "Ace of #{suit.to_s}"
    elsif value == 11
      return "Jack of #{suit.to_s}"
    elsif value == 12
      return "Queen of #{suit.to_s}"
    elsif value == 13
      return "King of #{suit.to_s}"
    else
      return "#{value} of #{suit.to_s}"
    end
    return "#{value} of #{suit.to_s}"
  end

end
