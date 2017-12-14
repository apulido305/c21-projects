# ruby boot_camp
# Game created as weekend project during wyncode cohort 21
# endgame scenario
def endgame
  cats_in_the_hats
  sleep 2
  puts 'Thank you for attending boot_camp'
  sleep 2
  abort(' GAME OVER ' * 10)
end

# Those cats in the hats are real
def cats_in_the_hats
  sleep 4
  cat_with_hat = '🐱'
  cat_no_hat = '🙀'
  cats = Array.new(108, cat_with_hat)

  10.times do |i|
    if cats[i] == cat_with_hat then cats[i] = cat_no_hat
    elsif cats[i] == cat_no_hat
    then cats[i] = cat_with_hat
    end
    p cats
  end
end

# welcome text
def intro
  puts 'Welcome to boot_camp'
  sleep 2
  puts 'Its your first day on week one and your pretty stoked'
  sleep 2
  puts 'but you have no clue how to code'
  sleep 2
  puts "What's your name"
  name = gets.chomp.downcase
  puts "So #{name.capitalize} Did you complete your prework yes or no?"
  started
end

# first question method
def started
  option = gets.chomp.downcase
  case option
  when 'yes'
    puts 'Your prework is done thats great! your completely bored the whole day'
    sleep 2
    puts 'and you wonder if this is going to be your life for the next 10 weeks'
    sleep 2
    puts 'do you "give up" or "trust the process" ?'
    prepared_struggle = gets.chomp.downcase
    struggle(prepared_struggle)
  when 'no'
    fail
  else
    puts 'please enter yes or no'
    started
  end
end

# loose game scenario
def fail
  puts 'you feel that programing isnt for you'
  sleep 2
  puts 'and you go back to look for jobs'
  puts 'you find one '
  puts 'at the amazon warehouse picking boxes'
  sleep 2
  puts 'your end salary is 13.00 an hour , Congratulations!'
  sleep 2
  endgame
end

# descision scenario 2
def struggle(prepared_struggle)
  case prepared_struggle
  when 'give up'
    puts 'you feel that programing isnt for you'
    sleep 2
    puts 'and you go back to look for jobs'
    puts 'you find one '
    puts 'at the amazon warehouse packing boxes'
    sleep 2
    puts 'your end salary is 13.00 an hour , Congratulations!'
    sleep 2
    endgame
  when 'trust the process'
    puts 'Its now your second day at Wyncode congratulations'
    sleep 2
    puts 'the day went really well'
    sleep 2
    puts 'you feel like you really understand the command line interface'
    sleep 2
    puts 'now your working in a command prompt like its 1982'
    sleep 2
    puts 'They just released the homework for the day'
    sleep 2
    puts 'you dont remember this from the lecture'
    sleep 2
    puts 'do you check documentation or search stack overflow'
    homework_challenge = gets.chomp.downcase
    homework(homework_challenge)
  else
    puts 'enter give up or trust the process'
    struggle_else = gets.chomp.downcase
    struggle(struggle_else)
  end
end

# are you hungry scenario
def homework(homework_challenge)
  case homework_challenge
  when 'check documentation'
    sleep 2
    puts 'you spent about 20 minutes finding the right method, now your ready to finish your homework.'
    sleep 2
    puts 'your feeling hungry'
    sleep 2
    puts 'do you go eat? yes or no'
    hungry = gets.chomp.downcase
    leave_wynbase(hungry)
  when 'stack overflow'
    sleep 2
    puts 'you spend 4 hours sifting through specific answers to other peoples questions and your no further then when you started'
    fail
  else
    puts 'enter "stack overflow" or "check documenation"'
    sec_chance = gets.chomp.downcase
    homework(sec_chance)
  end
end

# hungry answer
def leave_wynbase(hungry)
  case hungry
  when 'yes'
    sleep 2
    puts 'You go to eat in Wynwood and it costs you $32 for a salad a bottled water'
    sleep 2
    puts 'its late, your full and tired so you go home for the night'
    fail
  when 'no'
    wingame
  else
    puts 'enter yes or no'
    is_real = gets.chomp.downcase
    leave_wynbase(is_real)
  end
end

# wingame scenario
def wingame
  puts 'You hustled for 10 weeks'
  sleep 2
  puts 'on pitch day your team presented a killer app'
  sleep 2
  puts ' you get a job offer'
  sleep 3
  puts ' your end salary is $94,000 per year!!!'
  sleep 2
  puts ' Congratulations! '
  endgame
end

# game started
intro
