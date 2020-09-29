require_relative 'test_helper'

describe Deck do
  before do
    @deck = Deck.new
  end
  # Write tests for the Deck class.
  # What should you test?
    # 1.  Expected Behavior
    # 2.  Edge cases
  describe "constructor" do

    it "can be instantiated" do
      expect(@deck).must_be_instance_of Deck
    end
  end

  describe "draw method" do
    it "must respond to draw method" do
      expect(@deck).must_respond_to :draw
    end

    it "returns a Card" do
      expect(@deck.draw).must_be_instance_of Card
    end

    it "will let me draw 52 cards from an initial deck" do
      52.times do
        expect(@deck.draw).must_be_instance_of Card
      end
      expect(@deck.draw).must_be_nil
    end
  end
end
