def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  return 1 + rand(11)
end

def display_card_total(counter)
  # code #display_card_total here
  puts "Your cards add up to #{counter}"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  return gets.chomp
end

def end_game(counter)
  # code #end_game here
  puts "Sorry, you hit #{counter}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  card1 = deal_card
  card2 = deal_card
  initial = card1 + card2
  display_card_total(initial)
  return initial
end

def hit?(value)
  # code hit? here
  prompt_user
  input = get_user_input
  if input == 's'
    return value
  elsif input == 'h'
    return deal_card + value 
  else
    invalid_command
  end
end

def invalid_command
  # code invalid_command here
  puts "Please enter a valid command"
  return prompt_user
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  welcome 
  cards = initial_round 
  while cards < 21 
    cards = hit?(cards)
    display_card_total(cards)
  end
  end_game(cards)
end
    
