require 'minitest/autorun'
require 'minitest/pride'
require './lib/card'
require './lib/guess'
require 'pry'

class GuessTest < Minitest::Test
  def test_that_the_guess_is_on_the_card
    card = Card.new("What is the capital of Alaska?", "Juneau")
    guess = Guess.new("Juneau", card)
    guess.card
    assert_equal card, guess.card
  end

  def test_that_there_is_a_response
    card = Card.new("What is the capital of Alaska?", "Juneau")
    guess = Guess.new("Juneau", card)
    guess.card
    expected = "Juneau"
    assert_equal expected, guess.response
  end

  def test_that_the_response_is_correct
    card = Card.new("What is the capital of Alaska?", "Juneau")
    guess = Guess.new("Juneau", card)
    guess.card

    assert_equal true, guess.correct?
  end

  def test_the_feedback
    card = Card.new("What is the capital of Alaska?", "Juneau")
    guess = Guess.new("Juneau", card)
    guess.card

    assert_equal "Correct!", guess.feedback
  end

  def test_that_the_space_question_is_on_the_card
    card = Card.new("Which planet is closest to the sun?", "Mercury")
    guess = Guess.new("Saturn", card)
    guess.card
    assert_equal card, guess.card
  end

  def test_that_the_space_question_response_is_saturn
    card = Card.new("Which planet is closest to the sun?", "Mercury")
    guess = Guess.new("Saturn", card)
    guess.card
    expected = "Saturn"
    assert_equal expected, guess.response
  end

  def test_that_space_question_response_is_false
    card = Card.new("Which planet is closest to the sun?", "Mercury")
    guess = Guess.new("Saturn", card)
    guess.card

    assert_equal false, guess.correct?
  end

  def test_the_feedback_would_say_incorrect
    card = Card.new("Which planet is closest to the sun?", "Mercury")
    guess = Guess.new("Saturn", card)
    guess.card

    assert_equal "Incorrect.", guess.feedback
  end
end
