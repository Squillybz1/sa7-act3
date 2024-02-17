puts 'Welcome to the Aventure Game!
You have 0 points'

$point_total = 0
bool = true
while bool
  puts 'Choose a room (1-3) to enter or \'exit\' to end the game:'
  i = gets.chomp.to_s

  if 'exit'.eql? i
    bool = false

  else
    if '1'.eql? i
      puts 'You\'ve entered Room 1 and earned 5 points'
      $point_total += 5
    elsif '2'.eql? i
      puts 'You\'ve entered Room 2 and earned 10 points'
      $point_total += 10
    elsif '3'.eql? i
      puts 'You\'ve entered Room 3 and earned 15 points'
      $point_total += 15
    else
      puts 'Value must be 1, 2, or 3.'
      next
    end
    puts "You have #{$point_total} points."
    bool = true
  end
end
