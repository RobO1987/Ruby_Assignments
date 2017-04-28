from random import randint

board = []

# Create Board Matrix
for x in range(5):
    board.append(["O"] * 5)
#


# Pretty Print The Board
def print_board(board):
    for row in board:
        print (" ".join(row))

#
# Get Random Coords
def random_row(board):
    return randint(0, len(board) - 1)
def random_col(board):
    return randint(0, len(board[0]) - 1)


# # Start The Game
print ("Let's play Battleship!")
print_board(board)

#
# Store The Ship Coords In A Dictionary
ship_coords = {}
ship_coords['row'] = random_row(board)
ship_coords['col'] = random_col(board)


# UNCOMMENT THIS LINE FOR TESTING
print str(ship_coords['row']) + ', ' + str(ship_coords['col'])


# # Main Game Loop -- User Has 4 Tries
for turn in range(4):
    print "Turn #{}".format(turn + 1)
#
#     # Get Coords From User
    guess_coords = {}
    guess_coords['row'] = int(raw_input("Guess Row:"))
    guess_coords['col'] = int(raw_input("Guess Col:"))

    print "\n"

# Check If Guess Matches The Ship
    if guess_coords['row'] == ship_coords['row'] and guess_coords['col'] == ship_coords['col']:
        print ("Congratulations! You sunk my battleship!")
        break
    else:
        # Print Appropriate Message To User
        if (guess_coords['row'] < 0 or guess_coords['row'] > 4) or (guess_coords['col'] < 0 or guess_coords['col'] > 4):
            print ("Oops, that's not even in the ocean.")
        elif(board[guess_coords['row']][guess_coords['col']] == "X"):
            print ("You guessed that one already.")
        else:
            print ("You missed my battleship!")
            board[guess_coords['row']][guess_coords['col']] = "X"
        if turn == 3:
            print ("Game Over")
#
#     # Stop User So They Can Read Message
    raw_input("\nPRESS ANY KEY TO CONTINUE...")
    print_board(board)
