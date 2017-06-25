require_relative 'convert_to_nested_array'
require_relative 'convert_to_string'
# require_relative 'init_possible_hash'
require_relative 'sudoku'
require_relative 'narrow_logic'
require_relative 'narrow_logic_reversed'
require_relative 'row_logic'
require_relative 'column_logic'
require_relative 'brute_logic'
require_relative 'duplicate_board'

def solve_logic(board_string)
  # game = convert_to_nested_array(boardstring) convert to a Nested Array
  game = convert_to_nested_array(board_string)
  # init_possible_hash(nested_array- game)  - create the Possible Hash fill with 1-9   /// exclude all numbers in hash[coord] = nil  ////// Lets move this to initiation
  #
  flag1 = true
  flag2 = true
  flag3 = true
  flag4 = true
  # until (solved? ||(flag1 && flag2) == false)
  until solved?(game) || (flag1 || flag2||flag3||flag4) == false
    # Logic 1 - Flag =   narrow_Logic(board-nested) return true or false
      flag1 = narrow_logic(game)
      flag2 = narrow_logic_reversed(game)
      flag3 = row_logic(game)
      flag4 = column_logic(game)
    # Logic 2 - Flag =  possible_logic(hash,board-nestedArray) return true or false
   ## its is finished
   ## convert_to_string(nested_array) nested array to string method
   ## return string
  end
  # binding.pry
  new_board = duplicate_board(game)
  brute_logic(new_board,0,0)
  puts pretty_board(new_board)
  return game
end
