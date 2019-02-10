# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant

WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [2,4,6]
]

def won(board)
  WIN_COMBINATIONS.each {|i|
    if board[i[0]] == "X" && board[i[1]] == "X" && board[i[2]] == "X"
      i
    elsif board[i[0]] == "O" && board[i[1]] == "O" && board[i[2]] == "O"
      i 
    else
      false 
    end
  }
end
  

  