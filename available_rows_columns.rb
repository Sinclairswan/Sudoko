def available_rows_columns(row_index,column_index)
  row = (row_index / 3) * 3
  column = (column_index / 3) * 3
  available_rows = [row, row + 1, row + 2]
  available_columns = [column, column + 1, column + 2]
  return available_rows, available_columns
end ## return Nested array
## Rows    [[ 0 , 1 , 2 ]
## columns  [ 0 , 1 , 2 ]]
