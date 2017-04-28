board = []

# Create Board Matrix
for x in 1..5
  board.push(['0'] * 5)
end
#
# print board

def print_board board
  for row in board
  puts row.map{|x| "#{x}"}.join(" ")
  end
end

# print_board board

# Get Random Coords    ###ASK DAVID ABOUT THIS...COLUMNS>>>>
def random_row board
  return rand(5)
end

def random_col board
  return rand(5)
end

# Start The Game
puts "Let's play Battleship!"
print_board board

ship_coords = {}
ship_coords[:row]=random_row(board)
ship_coords[:col]=random_col(board)

# print ship_coords[:row].to_s + ' ' + ship_coords[:col].to_s

# Main Game Loop -- User Has 4 Tries
for turn in 1..4
  puts "Turn ##{turn}"

#Get Coords From User
  guess_coords = {}
  puts 'Guess Row'
  guess_coords[:row]= gets.to_i
  puts 'Guess Column'
  guess_coords[:col]= gets.to_i

  # Check If Guess Matches The Ship
    if guess_coords[:row] == ship_coords[:row] and guess_coords[:col] == ship_coords[:col]
      puts ("YOU SUNK MY BATTLESHIP!!!")
    else
      puts ("you suck!!!")
    end

  puts 'PRESS ANY KEY TO CONTINUE...'
  reset = gets
  print_board board
end
