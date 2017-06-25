require_relative 'traverse_coord'
def brute_logic(board,row,column)
  if row == 9
    return true
  end
  if board[row][column] != '-'
    next_row,next_column = traverse_coord(row,column)
    brute_logic(board,next_row,next_column)
  else
  9.times do | number|
  number += 1
  in_block = search_block(board,row,column).include?(number.to_s)
  in_row = search_row(board,row).include?(number.to_s)
  in_column = search_column(board,column).include?(number.to_s)
  if ((in_block || in_row || in_column) == false)
    board[row][column] = number.to_s
    next_row,next_column = traverse_coord(row,column)
    return true if brute_logic(board,next_row,next_column)
    board[row][column] = "-"
  end
  if number == 9
  #  binding.pry
    return false
  end
  end
  end
end
