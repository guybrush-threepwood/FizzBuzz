#! /usr/bin/env ruby
require "test/unit"

# Licence: WTFPLv2

#	Exercice FizzBuzz :
#	- si x divisible par 3 : Fizz
#	- si x divisible par 5 : Buzz
#	- si les deux : FizzBuzz
#	- si aucun : rien
# Et ce jusqu'à 100

class FizzBuzzer
	def fizzbuzz
		hfb = {}
		for i in Range.new(1, 100)
			hfb.merge! i => give_fizzbuzz(i)
		end
		return hfb
	end

	def give_fizzbuzz(int)
		result = (int%3).zero? ? "Fizz" : ""
		result = (int%5).zero? ? result + "Buzz" : result
		return result
	end
end
