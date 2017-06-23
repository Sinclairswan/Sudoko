require_relative 'solve_logic'
require_relative 'split_games'

# Takes a board as a string in the format
# you see in the puzzle file. Returns
# something representing a board after
# your solver has tried to solve it.
# How you represent your board is up to you!
def solve(board_string)
  ## Break Board string into ind Game Strings - return array
        ## call split_games(boardstring)
  ## For Each string in the Board String
    ## Call solve_logic(ind string)
end

# Returns a boolean indicating whether
# or not the provided board is solved.
# The input board will be in whatever
# form `solve` returns.
def solved?(board)
  #takes a nested array searches through each array
  #returns true if array does NOT include "-"

  board.each do |row|
      row.each do |item|
        if item.include?("-")
          return false
        else
          return true
        end
     end
   end

end



end

# Takes in a board in some form and
# returns a _String_ that's well formatted
# for output to the screen. No `puts` here!
# The input board will be in whatever
# form `solve` returns.
def pretty_board(board)
  board[0].insert(0, "")
  board.each do |row|
    row[-1].insert(-1, "\n")
  end
  board.join(" ")
end


######################  WE need search block methods  ---- give_block(coord) return array of block
