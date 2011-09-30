#! /usr/bin/env ruby
require "test/unit"

# Licence: WTFPLv2

#	Exercice FizzBuzz :
#	- si x/3 != 0 : Fizz
#	- si x/5 != 0 : Buzz
#	- si les deux : FizzBuzz
#	- si aucun : rien
# Et ce jusqu'à 100

class FizzBuzzer
	def fizzbuzz
		hfb = {}
		for i in Range.new(1, 100)
			result = (i%3).zero? == true ? "Fizz" : ""
			result = (i%5).zero? == true ? result + "Buzz" : result
			hfb.merge! i => result
		end
		return hfb
	end
end

class TestMyObject < Test::Unit::TestCase

	def initialize(arg)
		initialize_fizzbuzzer
		super
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
