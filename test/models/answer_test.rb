require 'test_helper'

class AnswerTest < ActiveSupport::TestCase

  test "should average ratings that result in whole number" do
    answer = answers(:first_driver_license)
    assert_equal 3, answer.average_rating
  end

  test "should average ratings that result in decimal number" do
    answer = answers(:first_driver_strength)
    assert_equal 3.5, answer.average_rating
  end

  test "should not count a rating of zero in the average" do
    answer = answers(:first_driver_experience)
    assert_equal 3, answer.average_rating
  end

  test "should 'average' a single rating" do
    answer = answers(:first_driver_weakness)
    assert_equal 4, answer.average_rating
  end

  test "should average zero if there are no ratings" do
    answer = answers(:first_driver_mangerial_experience)
    assert_equal 0, answer.average_rating
  end

end
