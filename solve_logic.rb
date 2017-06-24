require_relative 'convert_to_nested_array'
require_relative 'convert_to_string'
require_relative 'init_possible_hash'
require_relative 'sudoku'
require_relative 'narrow_Logic'

def solve_logic(board_string)
  # game = convert_to_nested_array(boardstring) convert to a Nested Array
  game = convert_to_nested_array(board_string)
  puts pretty_board(game)
  hash = init_possible_hash
    # - create the Possible Hash fill with 1-9   /// exclude all numbers in hash[coord] = nil  ////// Lets move this to initiation
  #

  # until (solved? ||(flag1 && flag2) == false)
  until solved?(game) || flag1 == false
    # Logic 1 - Flag =   narrow_Logic(board-nested) return true or false
      flag1 = narrow_Logic(game)
    # Logic 2 - Flag =  possible_logic(hash,board-nestedArray) return true or false
   ## its is finished
   ## convert_to_string(nested_array) nested array to string method
   ## return string
  end
  return game
end
