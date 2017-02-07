#num game function

class Game

    attr_accessor :target_number, :results, :guess, :guess_counter, :guess_count, :guess_array
    

    def initialize
        @target_number = target_number
        @guess = guess
        @results = results(guess, target_number)
        @guess_counter = guess_counter(guess_count)
       @guess_count = guess_count
       @guess_array = Array.new

        
    end

    def target_number
        rand(100)+1
    end

    def results(guess, target_number)
        if guess.to_i < target_number.to_i
            "Your guess was low"
        elsif guess.to_i > target_number.to_i
              "Your guess was high"
        else
            "correct"
                end #if
        
    end # compare_guess

    def guess_counter(guess_count)
        8
    end #guess counter

    def duplicate_guess?(guess_array,guess)
    guess_array.include?guess
    end #duplicate_guess

  

end# game class