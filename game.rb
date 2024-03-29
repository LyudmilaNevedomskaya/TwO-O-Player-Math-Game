class Game

  puts "Welcome to TwO-O-Player Math Game!"
puts "Player 1: enter your name..."
player1_name = gets.chomp

puts "Player 2: enter your name..."
player2_name = gets.chomp

player1 = Players.new(player1_name)
player2 = Players.new(player2_name)

count = 0   

while (player1.is_alive? && player2.is_alive?) do 
  player = (count == 0) ? player1 : player2

  puts '-----***** NEW TURN *****-----'

  question = Questions.new
  puts "#{player.name}: #{question.display}"
  print '> '
  answer = gets.chomp

  if answer.to_i == question.answer
    puts 'YES! You are correct!!!'
    puts "#{player1.name}: #{player1.lives}/3 vs #{player2.name}: #{player2.lives}/3"       
  else 
    player.lives -= 1
    puts 'Seriously? No!'
    puts "#{player1.name}: #{player1.lives}/3 vs #{player2.name}: #{player2.lives}/3"
  end

  count = (count + 1) % 2
end 

if (player1.lives == 0)
  puts "#{player2.name} wins with a score of #{player2.lives}/3"
  puts '-----***** GAME OVER *****-----'
  puts 'Good bye!'
else
  puts "#{player1.name} wins with a score of #{player1.lives}/3"
  puts '-----***** GAME OVER *****-----'
  puts 'Good bye!!!' 
end 

end