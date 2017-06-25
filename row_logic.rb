require_relative 'not_in_array'
def row_logic(board)
  flag = false
  board.each_index do|row_index|
    row = search_row(board,row_index)
    if row.length == 8
      number = not_in_array(row)
      column = board[row_index].find_index('-')
      board[row_index][column] = number
      flag = true
    end
  end
  flag
end
