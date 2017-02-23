require "minitest/autorun"
require_relative "coin.rb"

class TestCoin < Minitest::Test

    def test_0_cent_return_empty_hash
	    assert_equal({}, make_change(0))
    end
    def test_1_cent_return_penny_hash
    	assert_equal({:penny => 0.01}, make_change(0.01))
    end
    def test_2_cents_return_2_pennies_hash
    	assert_equal({:penny => 0.02}, make_change(0.02))
    end
    def test_5_cents_return_1_nickel_hash
    	assert_equal({:nickel => 0.05}, make_change(0.05))
    end
    def test_6_cents_return_1_nickel_1_penny_hash
    	assert_equal({:nickel => 0.05, :penny => 0.01}, make_change(0.06))
    end
end