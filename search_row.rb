def search_row(board,row_index)
  numbers_in_row = []
  board[row_index].each do |columns_value|
    numbers_in_row << columns_value if columns_value != "-"
  end
  numbers_in_row
end  ## returns array of what numbers are on a row


