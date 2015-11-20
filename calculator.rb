# 
# Create a ruby file called calculator.rb
# Take user input for the left hand of the equation
# Take user input for the operator of the equation
# Take user input for the right hand of the equation
# Calculate the correct answer and output it to the user
# Handle cases: Addition, Subtraction, Division, and Multiplication


def left_input
  puts "Please enter the first number to calculate: "
  @left_number = gets.to_f
  operation
end

def operation
  puts "Please enter operation to perform(+, -, /, *): "
  @operator = gets.strip
end

def right_input
  puts "Please enter the second number to calculate: "
  @right_number = gets.to_f
end

# calculate the correct answer and output it to the user
# create an if/else statement to calculate based on @operator using @left_number and @right_number

def calculate
  puts "#{@left_number} #{@operator} #{@right_number}"
  case @operator
  when "+"
    puts @left_number + @right_number
  when "-"
    puts @left_number - @right_number
  when "/"
    if @right_number == 0
      puts "Error"
    else
      puts @left_number / @right_number
    end
  when "*"
    puts @left_number * @right_number
  else
    puts "Error"
  end
end

left_input
right_input
calculate
