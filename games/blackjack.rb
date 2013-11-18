#Blackjack!

##Objective
#Practice contional logic including nested conditionals. 
#Use methods to keep our code DRY.

##Instructions
#We are going to build a command line blackjack game.  A player gets dealt
# two cards which have values between 1-11.  After they get dealt two cards
#  you should show them the total score of their cards and ask them if they 
#want to hit or stay. A player is allowed to "hit" up to two times.  After 
#each hit you should ask if they want to hit or stay and display the 
#total value of their cards. If they don't want to hit, and they are not at 21 they lose. 
# Your program should tell them they lose and exit.

#Note:  To take input from the person "playing" the game your program will have 
# to use the Ruby method "gets".

##Challenge
#After successfully completing the previous game 
#(there should be a commit with a working version of this game), 
#alter the game so that a player can "hit" as many times as they want.


class Blackjack

  attr_reader :starting_hand
  attr_reader :initial_input
  attr_reader :hitnumber
  attr_reader :card_total

  def initialize
    @starting_hand = [rand(1..11), rand(1..11)]
    @hitnumber = 0
    @card_total = @starting_hand[0] + @starting_hand[1]
  end

  def greeting
    greeting = true
    while greeting
      puts "Hi! Would you like to play a game of blackjack? (type 'y' or 'n')"
      @initial_input = gets.chomp.downcase
      if @initial_input == 'y' || @initial_input == 'n' 
        greeting = false
      else
        puts "-" * 40
        puts "Please enter 'y' to play or 'n' to quit"
        puts "-" * 40
      end
    end
    return @initial_input
  end

  def show_card(card_number)
    card_display = card_number.to_s.rjust(2)

    puts " ______ "
    puts "|#{card_display}".ljust(6) + " |"
    puts "|      |"
    puts "|      |"
    puts "|      |"
    puts "|    #{card_display}|"
    puts "|______|"
  end 

  def initial_deal(greeting_input)
    if greeting_input == 'y'
      puts "Great! Make your cards add up to 21 and you win."
      puts "Dealing your hand"
      puts
      70.times do
        print "*"
        sleep(0.01)
      end
      puts
      puts "Here's your hand:"
      sleep(1)
      show_card(@starting_hand[0])
      sleep(0.5)
      show_card(@starting_hand[1])
      puts "Your card total: #{@card_total}".rjust(40)
      puts 
      puts
    else
      puts "Sorry to see you go. You weren't feeling lucky were you? Adios."
    end
  end

  def deal
      @hitnumber += 1
      puts "Dealing another card"
      new_card = rand(1..11)
      @starting_hand << new_card
      @card_total += new_card
      puts
      70.times do
        print "*"
        sleep(0.01)
      end
      puts
      puts "Here's your hand:"
      
      sleep(1)

      @starting_hand.each do |card|
        show_card(card)
        sleep(0.5)
      end

      puts "Your card total: #{@card_total}".rjust(40)
      puts 
      puts
  end

  def hitme?
    puts "Type 'hit me' to add another card or 'stay' to keep your hand the way it is"
    input = gets.chomp.downcase
    if @hitnumber <= 2
      if input == 'hit me'
        true
      elsif input == 'stay'
        false
      else
        "Please enter 'hit me' or 'stay'"
      end
    else
      puts "You've hit too many times"
    end
  end

  def lost?
    if @hitnumber == 2 || @card_total > 21 
      puts "That's a bust! Your cards dont add up to exactly 21"
      true
    else
      false
    end
  end

  def win?
    if @hitnumber <= 2 && @card_total == 21
      true
    else
      false
    end
  end

end

blackjack = Blackjack.new

greeting_input = blackjack.greeting

blackjack.initial_deal(greeting_input)

if blackjack.lost?
  puts "That's just unlucky. Usually people don't bust on the first hand.\nYour cards dont add up to exactly 21."
elsif
  while blackjack.hitme?()
    blackjack.deal
    if blackjack.lost?
      break 
      "Sorry, you lose. You hit one too many times!"
    elsif blackjack.win?
      puts "Congratulations, you win!"
    end
  end
else
  if blackjack.hitnumber < 2 && blackjack.card_total < 21 
    puts "You lost. You stayed, but your hand didn't reach 21. Better luck next time!"
  end
end






  






