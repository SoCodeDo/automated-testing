 require_relative 'test_helper'

 describe Card do
   describe "You can create a Card instance" do
     it "Can be created" do
       [:hearts, :spades, :clubs, :diamonds].each do |suit|
          (1..13).each do |value|
            card = Card.new(value, suit)
            expect(card).must_be_instance_of Card
          end
       end
     end

    it "Raises an ArgumentError for invalid parameters" do
      # To raise an ArgumentError in card.rb
      # raise ArgumentError.new
      expect {Card.new(0, :diamonds)}.must_raise ArgumentError
      expect {Card.new(14, :diamonds)}.must_raise ArgumentError
      expect {Card.new(14, :clovers)}.must_raise ArgumentError
      expect {Card.new(1, :clovers)}.must_raise ArgumentError
    end
   end


   describe "Testing to_s" do
     it "to_s returns a readable String value logically for values 2-10" do
        card = Card.new(2, :diamonds)
        expect(card.to_s).must_equal "2 of diamonds"
     end

     it "to_s returns a readable String value for Ace, Jack, Queen, King" do
        face_cards = {
          1 => "Ace",
          11 => "Jack",
          12 => "Queen",
          13 => "King"
        }

        face_cards.each do |number, face_value|
          card = Card.new(number, :hearts)

          expect(card.to_s).must_equal "#{face_value} of hearts"
        end
    end
   end
    describe "Reader methods" do

      it "Can retrieve the value of the card using a `.value`." do
       [:hearts, :spades, :clubs, :diamonds].each do |suit|
         (1..13).each do |value|
           card = Card.new(value, suit)
           expect(card.value).must_equal value
         end
       end
     end

      it "Can retrieve the value of the card using a `.suit`." do
       [:hearts, :spades, :clubs, :diamonds].each do |suit|
         (1..13).each do |value|
           card = Card.new(value, suit)
           expect(card.suit).must_equal suit
         end
       end
      end
    end
 end