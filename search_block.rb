require_relative 'available_rows_columns'

def search_block(board,row_index,column_index)
  numbers_in_block = []
  available_rows, available_columns = available_rows_columns(row_index,column_index)
  available_rows.each do |r_index|
    available_columns.each do |c_index|
      numbers_in_block << board[r_index][c_index] if board[r_index][c_index] != "-"
    end
  end
  numbers_in_block
end  ## returns all numbers in the block in an array
## Rows    [[ 0 , 1 , 2 ]
## columns  [ 0 , 1 , 2 ]]
##
## looks like
##[[- ,9, 8 ]
##[- , -, 3]
##[7, -, - ]
## return [9, 8, 7, 3,]

  # (available_rows.product(available_columns)).each do |coordinate|
  #   board[coordinate[0][coordinate[1]]
  # end
