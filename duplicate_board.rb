def duplicate_board (board)
  new_board = []
  board.each do |row|
    new_row = []
    row.each do |column|
      new_row << column
    end
    new_board << new_row
  end
  new_board
end
