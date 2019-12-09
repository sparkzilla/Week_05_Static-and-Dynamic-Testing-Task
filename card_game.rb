require_relative('card')

class CardGame

  attr_reader :cards

  def initialize(card1, card2)
    @card1 = card1
    @card2 = card2
  end

  def highest_card
      if @card1.value > @card2.value
        return @card1
      else
        return @card2
      end
    end

  def cards_total
    total = @card1.value + @card2.value
    return "You have a total of " + total.to_s
  end
end
