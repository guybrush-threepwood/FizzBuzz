#! /usr/bin/env ruby
require "test/unit"

class FizzBuzzer
	def get100primenumbers
		tab = []
		100.times do
			tab << 2
		end
		tab[0] = 1
		return tab
	end
end

class TestMyObject < Test::Unit::TestCase
	def initialize_fizzbuzzer
		@myfizzbuzobj = FizzBuzzer.new
	end

	def test_givesfirst100primenumbers
		initialize_fizzbuzzer

		assert_not_nil @myfizzbuzobj.get100primenumbers
		assert_equal @myfizzbuzobj.get100primenumbers.size, 100
	end

	def test_cangiveone
		initialize_fizzbuzzer

		assert_equal @myfizzbuzobj.get100primenumbers[0], 1
	end

	def test_cangivetwo
		initialize_fizzbuzzer

		assert_equal @myfizzbuzobj.get100primenumbers[1], 2
	end
	
	def test_threeisfizz
		assert_equal "fizz!", @myfizzbuzobj.get100primenumbers[4].value
		#Faire un Hash plutot qu'un Array!
	end
end
