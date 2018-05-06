def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  card = rand(1..11)
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  input = gets.chomp
end

def end_game(integer)
  puts "Sorry, you hit #{integer}. Thanks for playing!"

end

def initial_round
  first_card = deal_card
  second_card = deal_card
  total = first_card + second_card
  display_card_total(total)
  return total
end



def hit?(total)
  prompt_user
    input = get_user_input

  if input == "s"
    total
  elsif input == "h"
    card = deal_card
    total += card
  else
    invalid_command
    prompt_user
  end
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #


def runner
  welcome
  total = initial_round

  while total <= 21 do
        total = hit?(total)
  end
  display_card_total(total)
  end_game(total)
end
