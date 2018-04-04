require 'minitest/autorun'
require 'minitest/pride'
require './lib/card'
require 'pry'
class CardTest < Minitest::Test
  def test_that_card_has_a_question
    card = Card.new("What is the capital of Alaska?", "Juneau")

    expected = "What is the capital of Alaska?"
    assert_equal expected, card.question
    expected = "Juneau"
    # binding.pry
    assert_equal expected, card.answer
  end

  
end
