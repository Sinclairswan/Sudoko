require_relative 'search_row'
require_relative 'search_column'
require_relative 'search_block'


def possible_logic(hash,board)
  ## set flag == false
  ##go through each individual cell of board
    ##Checks if board cell has any number
        ## exclude all numbers in hash[coord] = nil  ////// Lets move this to initiation
        ## basically do nothing, skip what is below.
    ##Else Checks if board cell is empty "-"
        ## exclude all numbers in the row (method search_row? - return array of what is in row)
        ## exclude all numbers in column (method search column)
        ## exclude all numbers in block (used search_block method)
        ## check if hash[coord].length == 1 (basically there is only one possibility left )
           ## updated board at coord with value
           ## set flag to true
           ## hash[coord] = nil
  ##repeat through all board cells
  ##return Flag
end

##returns True or False depending if board was edited
