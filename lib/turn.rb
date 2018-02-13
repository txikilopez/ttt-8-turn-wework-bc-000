

# Help methods
def turn(board)
  puts("Please enter 1-9:")
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board, index) == true
    move(board, index)
    display_board(board)
  else
    turn(board)
  end
end

#Move
def move(board, index, character = "X")
  board[index] = character
end

#input to index
def input_to_index(input)
  index = input.to_i - 1
end


#Valid Move?
def valid_move?(board, index)
  if index.between?(0,8) && position_taken?(board, index) == false
      true
  else
    false
  end
end

# position_taken?
def position_taken?(board1, index1)
  if board1[index1] ==" " || board1[index1] =="" || board1[index1] == nil
    false
  elsif board1[index1] == "X" || board1[index1] == "O"
  true
  end
end

#Display Board
def display_board(board)
  puts(" #{board[0]} | #{board[1]} | #{board[2]} ")
  puts("-----------")
  puts(" #{board[3]} | #{board[4]} | #{board[5]} ")
  puts("-----------")
  puts(" #{board[6]} | #{board[7]} | #{board[8]} ")
end

