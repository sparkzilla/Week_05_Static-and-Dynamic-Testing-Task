require('minitest/autorun')
require('minitest/reporters')
require_relative('../card_game')
require_relative('../card')

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class CardGameTest < MiniTest::Test

  def setup

    @card1 = Card.new('Clubs',10)
    @card2 = Card.new('Diamonds', 1)
    @card3 = Card.new('Spades', 5)

    @game1 = CardGame.new(@card1, @card2)
    @game2 = CardGame.new(@card2, @card3)

  end

  def test_has_name
    assert_equal('Clubs', @card1.suit)
  end

  def test_has_value
    assert_equal(5, @card3.value)
  end

  def test_checkforAce__true
    result = @card2.checkforAce
    assert_equal(true, result)
  end

  def test_checkforAce__false
    result = @card3.checkforAce
    assert_equal(false, result)
  end

  def test_highest_card
    result = @game1.highest_card
    assert_equal(@card1, result)
  end

  def test_cards_total
    result = @game1.cards_total
    assert_equal("You have a total of 11", result)
  end

end
