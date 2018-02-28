require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'

class WeatherDataTest < Minitest::Test

  def setup
    @three_day_forecast = {
      days: [{high: 70,low: 63,summary: "Mostly Sunny"},
        {high: 55,low: 47,summary: "Partly Cloudy"},
        {high: 77,low: 64,summary: "Sunny"}],
      date: "6-21-18",
      ref_num: 3456789765456787656}
  end

  def test_what_type_of_objects

    assert_instance_of Hash, @three_day_forecast
    assert_instance_of Array, @three_day_forecast[:days]
    assert_instance_of String, @three_day_forecast[:date]
    assert_instance_of Fixnum, @three_day_forecast[:ref_num]
    assert_instance_of Hash, @three_day_forecast[:days][0]
    assert_instance_of Fixnum, @three_day_forecast[:days][1][:high]
    assert_instance_of Fixnum, @three_day_forecast[:days][1][:low]
    assert_instance_of String, @three_day_forecast[:days][1][:summary]
    assert_instance_of Array, @three_day_forecast[:days][2].keys
    assert_instance_of Array, @three_day_forecast[:days][1].values
    assert_instance_of Fixnum, @three_day_forecast[:days][1].values[0]
    assert_instance_of String, @three_day_forecast[:days][1].values[2]
    assert_instance_of Symbol, @three_day_forecast[:days][2].keys[0]
  end

  def test_access
    skip
    assert_equal 3456789765456787656, ____
    assert_equal "Sunny", ____
    assert_equal [:days, :date, :ref_num], ____
    assert_equal 55, ____
    assert_equal [:high, :low, :summary], ____
    assert_equal [77, 64, "Sunny"], ____
  end

end
