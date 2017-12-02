# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
   [0,1,2], # Top row
   [3,4,5],  # Middle row
   [6,7,8],  # Bottom row
   [0,3,6],  # Left col
   [1,4,7],  # Middle col
   [2,5,8],  #Right col
   [0,4,8], #Diag Right
   [2,4,6] #diag left
 ]

def won? (board)#returns true if someone won, false if no one did
if board==[" "," "," "," "," "," "," "," "," "]
  false
end
i=0
while i<8
  # win_combination is a 3 element array of indexes that compose a win, [0,1,2]
  # grab each index from the win_combination that composes a win.
  win_index_1 = WIN_COMBINATIONS[i,0]
  win_index_2 = WIN_COMBINATIONS[i,1]
  win_index_3 = WIN_COMBINATIONS[i,2]

  position_1 = board[win_index_1] # load the value of the board at win_index_1
  position_2 = board[win_index_2] # load the value of the board at win_index_2
  position_3 = board[win_index_3] # load the value of the board at win_index_3

  if position_1 == "X" && position_2 == "X" && position_3 == "X"
    return true # return the win_combination indexes that won.
  elsif position_1 == "O" && position_2 == "O" && position_3 == "O"
    return true # return the win_combination indexes that won.
  end
  i+=1
end
false
end

def full? (board)
if draw?(board)
  true
elsif board.include(" ")
    false
else
  true
end
end

def draw? (board)
  if board.include(" ")
    false
  end

end

def over?(board)

end
def winnder?(board)

end
