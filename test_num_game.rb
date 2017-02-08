#num game test
require "minitest/autorun"						# add minitest function to program
require_relative "num_game_function.rb"					# point minitest to division.rb

class TestGuessNumberGame2 < Minitest::Test  	#create template for test

	def test_one_equal_one_
		assert_equal(1,1)
	end

    def test_assert_inside
        assert_includes(1..100,5)
    end


     def test_if_randomizer_yields_number   
         game = Game.new     
         number =game.target_number
        assert_includes(1..100,number)
      end

      def test_guess_was_high               
        target_number=20        
        guess=25
        results = Game.new.results(guess, target_number)
        assert_equal("Your guess was high", Game.new.results(guess, target_number))

	end

      def test_guess_was_correct              
        target_number=20
        guess=20
        results = Game.new.results(guess, target_number)
        assert_equal("correct", Game.new.results(guess, target_number))

	end

    def test_guess_count_return_8
        assert_equal(8,Game.new.guess_counter(9))
    end

    def test_guess_count_return_7
        assert_equal(7,Game.new.guess_counter(8))
    end

    def test_previous_guess_return_true_for_1
     
        assert_equal(true,Game.duplicate_guess([1,2,3,4,5],1))

    end #test_previous_guess_return_true_for_1


end #class