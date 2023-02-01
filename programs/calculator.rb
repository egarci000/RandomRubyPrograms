def valid_number?(number_string)
  number_string.to_f.to_s == number_string || number_string.to_i.to_s == number_string
end

def add(first_number, second_number)
  first_number.to_i + second_number.to_f
end

def subtract(first_number, second_number)
  first_number.to_i - second_number.to_f
end

def multiply(first_number, second_number)
  first_number.to_i * second_number.to_f
end

def divide(first_number, second_number)
  (first_number.to_i / second_number.to_f).round(4)
end

def remainder(first_number, second_number)
  first_number.to_i % second_number.to_f
end

loop do
  puts "type 'a' to add, 's' to subtract, 'm' to multiply, 'd' to divide"
  prompt = gets.chomp.downcase

  case prompt
    when 'a'
      puts ">> Enter the first number:"
      add_number1 = gets.chomp
      puts ">> Enter the second number:"
      add_number2 = gets.chomp

      if valid_number?(add_number1) == true && valid_number?(add_number2) == true
        puts "The result of your two numbers being added is: #{add(add_number1, add_number2)}"
      else 
        puts "Error, please enter valid integers"
      end

    when 's'
      puts ">> Enter the first number:"
      subtract_number1 = gets.chomp
      puts ">> Enter the second number:"
      subtract_number2 = gets.chomp

      if valid_number?(subtract_number1) == true && valid_number?(subtract_number2) == true
        puts "The result of your two numbers being subtracted is: #{subtract(subtract_number1, subtract_number2)}"
      else 
        puts "Error, please enter valid integers"
      end

    when 'm'
      puts ">> Enter the first number:"
      multiply_number1 = gets.chomp
      puts ">> Enter the second number:"
      multiply_number2 = gets.chomp

      if valid_number?(multiply_number1) == true && valid_number?(multiply_number2) == true
        puts "The result of your two numbers being multiplied is: #{multiply(multiply_number1, multiply_number2)}"
      else 
        puts "Error, please enter valid integers"
      end

    when 'd'
      puts ">> Enter the numerator:"
      divide_number1 = gets.chomp
      puts ">> Enter the denominator (not 0):"
      divide_number2 = gets.chomp

      if valid_number?(divide_number1) == true && valid_number?(divide_number2) == true
        if divide_number2.to_i == 0
          puts "Error cannot divide by 0"
        else 
          puts "The result of your two numbers being divided is: #{divide(divide_number1, divide_number2)}, with a remainder of #{remainder(divide_number1, divide_number2)}"
        end
      else
        puts "Error, please enter valid integers"
      end
    else 
      puts "Your options are 'a', 's', 'm' or 'd'"
  end

  puts ">> Would you like to try again? (y/n - or any other key)"
  answer = gets.chomp.downcase

  puts "Goodbye!" if answer != "y"
  break unless answer == "y"
end

