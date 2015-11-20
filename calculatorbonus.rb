# Refactor to only take user input once
# eg. What is the equation?
# user input: 1 + 1
# hint: you’ll need to split the user input to get the values out
# Organize your code to use methods
# Handle more equations: PEMDAS, sin, cosin, square root, ect… # didnt do
# Have the calculator ask for new equations over and over
# hint: use a loop
# Have the calculator store the last result so you can do a new equation and add to the previous result # didnt do
#     assign result to variable
# Have a clear function so you don’t keep adding to the last result if you don’t want to # didnt do
# Store a history of the users equations and answers
# hint: use hashes
# Refactor calculator:  (hashes, array methods, maybe lambda)

@history = {}

# make calculate equations into lambdas, put them into a hash, when answer is " " call hash

def user_input
  puts "Your previous calculations:"
  @history.each {|equation, answer| puts "#{equation} = #{answer},"}
  puts "Please enter the equation you want to calculate; separate with spaces(ex 1 + 2): "
  puts "Choose operator from (+, -, /, *)"
  @equation = gets.strip.split(" ")
  calculate
end

def exit_choice
  puts "Do you want to enter an equation?(y/n): "
  @continue = gets.strip.downcase
end

def calculate
  left_number = @equation[0].to_f
  right_number = @equation[2].to_f
  case @equation[1]
  when "+"
    answer = left_number + right_number
  when "-"
    answer = left_number - right_number
  when "/"
    if right_number == 0
      answer = "Error"
    else
      answer = left_number / right_number
    end
  when "*"
    answer = left_number * right_number
  else
    answer = "Error"
  end
  puts answer
  @history[@equation.join(" ")] = answer
end

exit_choice

# make a loop that asks for new equations over and over
# and eventually exits
# while variable != quit call user_input
while @continue == "y"
  user_input
  exit_choice
end
