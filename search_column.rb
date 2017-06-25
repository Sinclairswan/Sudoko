require_relative 'search_row'

def search_column(board,column_index)
   search_row(board.transpose, column_index)
end  ## returns array of what numbers are on a column
