require_relative 'convert_to_nested_array'
require_relative 'convert_to_string'
require_relative 'init_possible_hash'
require_relative 'sudoku'


def solve_logic(board_string)
  # game = convert_to_nested_array(boardstring) convert to a Nested Array
  # init_possible_hash(nested_array- game)  - create the Possible Hash fill with 1-9   /// exclude all numbers in hash[coord] = nil  ////// Lets move this to initiation
  #

  # until (solved? ||(flag1 && flag2) == false)
    # Logic 1 - Flag =   narrow_Logic(board-nested) return true or false

    # Logic 2 - Flag =  possible_logic(hash,board-nestedArray) return true or false
   ## its is finished
   ## convert_to_string(nested_array) nested array to string method
   ## return string
end
