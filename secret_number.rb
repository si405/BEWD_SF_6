###############################################################################
#
# Back-End Web Development - Homework #1
#
# Secret Number is a game you will build in two parts.
# The purpose of the game is to have players guess a secret number from 1-10.
#
# Read the instructions below.
# This exercise will test your knowledge of Variables and Conditionals.
#
###############################################################################
#
# We're ready to program! To practice our Ruby skills lets create a secret number game. 
# In this game players have three tries to guess a secret number between 1 and 10. 
#
# Here are some guidelines to building your game:
#
#	Intros
# 	-	Welcome the player to your game. Let them know who created the game. 
#	  -	Ask for the player's name then personally greet them by printing to the screen, "Hi player_name!"
#	  -	Any good game will communicate the rules. Let the player know they must guess a number between 1 and 10 
#		and that they only have 3 tries to do so.
#
#	Functionality: 
#	 -	Hard code the secret number. Make it a random number between 1 and 10.
#	 - 	Ask the user for their guess.
#	 -	Verify if they were correct. If the player guesses correctly they win the game they should be congratulated and the game should end.
#	 -	If they guess incorrectly, give the player some direction. If they guess too high let them know, if they guess too low, let them know.
#	 - 	Don't forget to let your players know how many guesses they have left. Your game should say something like
#		  "You have X many guesses before the game is over enter a another number"
#	 -	If they don't guess correctly after 3 tries, print that the Player lost and the game is over. Also let them know what the `secret_number` was.
#
# Make sure to add helpful comments to your code to document what each section does.
# 
# Remember to cast input from the Player into the appropriate data type.
#
###############################################################################

#Print the ganme information and get the player information

  puts
  puts
  puts "Welcome to Guess My Number by Simon Williams"
  puts
  puts "What's your name?"
  player = gets.chomp.capitalize
  puts
  puts "Hi " + player.chomp + "! You have three tries to guess my secret number between 1 and 10"
  puts

#Outside loop for repeat playing

playAgain = 'Y'
while playAgain == 'Y'

#Define the secret number

  secretNumber = rand(1..10).to_i
  puts secretNumber

#Loop for the guess three times, skip the "Try" prompt on the last attempt

  loopCount = 3
  while loopCount > 0
    print "You have #{loopCount} tries left. Please enter your guess and press return.."
    guess = gets.chomp.to_i
    if guess > secretNumber
      if loopCount != 1
        puts "Try a lower number"
      end
    elsif guess < secretNumber
        if loopCount != 1
        puts "Try a higher number"
      end
    else
      break
    end
    loopCount = loopCount - 1
  end

#Congratulate or commiserate

  if guess == secretNumber
#    puts guess
    puts
    puts "Congratulations #{player}! You guessed correctly"
  else
    puts
    puts "Sorry #{player} the secret number was #{secretNumber}"
  end
  puts
  print "Would you like to play again? (Y/N)"
  playAgain = gets.chomp.upcase
#  puts playAgain

#End of main loop
end

puts
puts "Thanks for playing #{player}!"
