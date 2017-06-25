def column_logic(board)
  flag = false
  board.transpose.each_index do|row_index|
    row = search_row(board.transpose,row_index)
    if row.length == 8
      number = not_in_array(row)
      column = board.transpose[row_index].find_index('-')
      board[column][row_index] = number
      flag = true
    end
  end
  flag

end
