#! /usr/bin/env ruby
require "./fizzbuzz.rb"

class TestFizzBuzz < Test::Unit::TestCase
	def setup
		initialize_fizzbuzzer
	end

	def initialize_fizzbuzzer
		@myfizzbuzobj = FizzBuzzer.new
	end

	def test_gives_a_hash_of_one_hundred_pairs
		assert_not_nil @myfizzbuzobj.fizzbuzz
		assert_equal Hash, @myfizzbuzobj.fizzbuzz.class
		assert_equal 100, @myfizzbuzobj.fizzbuzz.size
	end

	def test_is_fizzbuzz
		hfb = @myfizzbuzobj.fizzbuzz
		for i in Range.new(1, 100)
			assert_not_nil hfb[i]
			assert_equal "Fizz", hfb[i] if (i%3).zero? and !(i%15).zero?
			assert_equal "Buzz", hfb[i] if (i%5).zero? and !(i%15).zero?
			assert_equal "FizzBuzz", hfb[i] if (i%15).zero?
			assert_equal "", hfb[i] if !(i%3).zero? and !(i%5).zero?
		end
	end
end
