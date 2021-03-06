# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
    [0, 1, 2],
    [3, 4, 5],
    [6, 7, 8],
    [0, 3, 6],
    [1, 4, 7],
    [2, 5, 8],
    [0, 4, 8],
    [2, 4, 6]
 ]

 def won?(board)
   WIN_COMBINATIONS.each do |win_combination|
    if win_combination.all? do |win_index|
            board[win_index] == "X"
            end
 return win_combination
elsif win_combination.all? do |win_index|
         board[win_index] == "O"
  end
   return win_combination
      end
    end
  return false
    board.any? do |position|
      position == "X" || position == "O"
 end
end

 def full?(board)
   !(board.include?(" "))
 end

def draw?(board)
  full?(board) && !(won?(board))
end

def over?(board)
  won?(board) || full?(board) || draw?(board)
end

def winner(board)
  if won?(board)
    win_combination = won?(board)
      if board[win_combination[0]] == "X"
        return "X"
        else
         return "O"
       end
  end
end
