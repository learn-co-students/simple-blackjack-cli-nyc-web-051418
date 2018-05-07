def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  return rand(1..11)
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  string = gets.chomp
  return string
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  sum1 = deal_card
  sum2 = deal_card
  total = sum1 + sum2
  display_card_total(sum3)
  return total
end

def hit?(current_total)
  prompt_user
  input = get_user_input
  if input =="h"
    sum = deal_card
    new_total = sum + current_total
  elsif input == "s"
    new_total = current_total
  else
    invalid_command
    prompt_user
  end
  return new_total  
end

def invalid_command
   puts "Please enter a valid command"
   prompt_user
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  initial_round
  until total > 21
   display_card_total(total)
   hit?
  end
  end_game
end
    
