require "test_helper"

class HighScoreTest < ActiveSupport::TestCase
  def test_create
    high_score = HighScore.new(game: "Game", score: 11)
    assert_predicate high_score, :valid?
  end

  def test_create__score_too_small
    high_score = HighScore.new(game: "Game", score: 10)
    assert_predicate high_score, :invalid?
    assert_equal({score: ["must be greater than 10"]}, high_score.errors.messages)
  end
end
