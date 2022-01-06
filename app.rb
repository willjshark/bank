# frozen_string_literal: true

require './lib/transaction'

def run_application
  'Hello and welcome to your banking application'
  exit = false
  while exit == false

    puts 'What would you like to do? Type in the number of the task you wish to complete.'
    puts ' (1) Tell me my current balance '
    puts ' (2) I would like to make a deposit '
    puts ' (3) I would like to make a withdrawal '
    puts ' (4) I would like to see a statement of my latest transactions '
    puts ' (5) Exit program '

    choice = gets.chomp
    case choice
    when '1'
      puts ' '
      puts "Your current balance is #{current_balance}"
      puts ' '
    when '2'
      puts ' '
      puts 'How much would you like to deposit?'
      deposit = gets.chomp.to_i
      deposit(deposit)
      puts ' '
    when '3'
      puts ' '
      puts 'How much would you like to withdraw?'
      withdrawal = gets.chomp.to_i
      withdraw(withdrawal)
      puts ' '
    when '4'
      puts ' '
      statement
      puts ' '
    when '5'
      break
    else
      puts ' '
      puts "You gave me #{choice}, I have no idea what to do with that."
      puts ' '
    end
  end
end

run_application
