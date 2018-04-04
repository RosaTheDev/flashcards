require 'minitest/autorun'
require 'minitest/pride'
require './lib/card'
require 'pry'
class CardTest < Minitest::Test
  def test_what_is_the_capital_of_alaska_card
    card = Card.new("What is the capital of Alaska?", "Juneau")

    expected = "What is the capital of Alaska?"
    assert_equal expected, card.question
    expected = "Juneau"
    # binding.pry
    assert_equal expected, card.answer
  end

  def test_which_planet_is_closest_to_the_sun_card
    card = Card.new("Which planet is closest to the sun?", "Mercury")

    expected = "Which planet is closest to the sun?"
    assert_equal expected, card.question
    expected = "Mercury"
    assert_equal expected, card.answer

  end
end
