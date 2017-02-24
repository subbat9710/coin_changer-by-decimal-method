require "minitest/autorun"
require_relative "coin.rb"

class TestCoin < Minitest::Test

    def test_0_cent_return_empty_hash
	    assert_equal({}, make_change(0.00))
    end
    def test_1_cent_return_penny_hash
    	assert_equal({:penny => 1}, make_change(0.01))
    end
    def test_2_cents_return_2_pennies_hash
    	assert_equal({:penny => 2}, make_change(0.02))
    end
    def test_5_cents_return_1_nickel_hash
    	assert_equal({:nickel => 1}, make_change(0.05))
    end
    def test_6_cents_return_1_nickel_1_penny_hash
    	assert_equal({:nickel => 1, :penny => 1}, make_change(0.06))
    end
    def test_9_cents_return_1_nickel_4_pennies_hash
    	assert_equal({:nickel => 1, :penny => 4}, make_change(0.09))
    end
    def test_10_cents_return_1_dime_hash
    	assert_equal({:dime => 1}, make_change(0.10))
    end
    def test_17_cents_return_1_dime_1_nickel_2_pennies_hash
    	assert_equal({:dime => 1, :nickel => 1, :penny => 2},make_change(0.17))
    end
    def test_20_cents_return_2_dime_hash
    	assert_equal({:dime => 2}, make_change(0.20))
    end
    def test_22_cents_return_2_dime_2_pennies_hash
    	assert_equal({:dime => 2, :penny => 2}, make_change(0.22))
    end
    def test_25_cents_return_1_quarter_hash
    	assert_equal({:quarter => 1}, make_change(0.25))
    end
    def test_31_cents_return_2_dime_1_nickel_1_penny_hash
    	assert_equal({:quarter => 1, :nickel => 1, :penny => 1}, make_change(0.31))
    end
    def test_92_cents_return_3_quarter_1dime_1_nickel_3_pennies_hash
    	assert_equal({:quarter => 3, :dime => 1, :nickel => 1, :penny => 3}, make_change(0.93))
    end
    def test_1_bill_return_1_dollar_hash
    	assert_equal({:dollar => 1}, make_change(1))
    end
    def test_102_return_1_dollar_2_pennies_hash
    	assert_equal({:dollar => 1, :nickel => 1, :penny => 2}, make_change(1.07))
    end
end