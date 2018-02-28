require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'

class StateCapitalsTest < Minitest::Test

  def setup
    @states = {"Oregon" => "OR",
                "Alabama" => "AL",
                "New Jersey" => "NJ",
                "Colorado" => "CO"}

    @capitals = {"OR" => "Salem",
                  "AL" => "Montgomery",
                  "NJ" => "Trenton",
                  "CO" => "Denver"}
  end

  def test_get_abbreviation_from_state

    def get_abbreviation(state_name)
      @states[state_name]

    end
    assert_equal "OR", get_abbreviation("Oregon")
    assert_equal "AL", get_abbreviation("Alabama")
  end

  def test_get_capital_from_state

    def get_capital(state_name)
      abbrev = get_abbreviation(state_name)
      if abbrev.nil?
        "Unknown"
      else
      @capitals[abbrev]
      end
    end
    assert_equal "Denver", get_capital("Colorado")
    assert_equal "Trenton", get_capital("New Jersey")
    assert_equal "Unknown", get_capital("Virginia")
  end

  def test_get_state_name_from_capital

    def get_state(capital)
      @capitals.key(capital)

    end
    assert_equal "Colorado", get_state("Denver")
    assert_equal "New Jersey", get_state("Trenton")
  end

  def test_create_single_collection
    skip
    def create_single_collection
      #YOUR CODE HERE
    end

    expected_state_info = {
        "Oregon" => {abbreviation: "OR", capital: "Salem"},
        "Alabama" => {abbreviation: "AL", capital: "Montgomery"},
        "New Jersey" => {abbreviation: "NJ", capital: "Trenton"},
        "Colorado" => {abbreviation: "CO", capital: "Denver"}
       }

    assert_equal expected_state_info, create_single_collection
  end

end
