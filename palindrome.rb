def initial
  print `clear`
  puts "This is a palindrome checker"
  puts "Please enter your name"
  @name = gets.strip
  puts "Alright #{@name}, press ENTER to get started"
  gets
  main
end

def main
  print `clear`
  puts "Enter a phrase to make sure it is a palindrome."
  @answer = gets.strip.downcase.scan /\w/
  math
end

def math
  @newone = []
  @clone = @answer.clone
  @newone << @clone.pop until @clone.empty?
  if @newone == @answer
    puts "Yay #{@name}! You did it!"
  else
    puts "Bummer #{@name}, not a palindrome"
  end
  again
end

def again
  puts "Would you like to do another?"
  @more = gets.strip.downcase
  if @more == "yes" || @more == "y"
    main
  else
    exit
  end
end
initial
