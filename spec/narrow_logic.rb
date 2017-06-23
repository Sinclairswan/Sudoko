require_relative 'get_block'
require_relative 'available_rows_columns'

def narrow_logic(hash,board)
  ## set flag = false
  ## for each number [1..9]
  ## for each block  [0..8]## use hash for blocks to get coordinates
    ## Check if block has Number
    ## If block doesn't have number
      ## what rows and columns available available_rows_columns(block)
      ## if number is not in block
        ## for each row available
        ## check for Number
        ## if only one row doesn't have number(remember row)
          ## for each available column
          ## check for number
          ## if only 1 column doesn't have number(remember column)
            ## put NUMBER in to board at Row and Column
            ## Set Flag == true
          ##
        ##
    ##Go through Each Block with 1 number
  ## change Number and repeat through all blocks

  ##return Flag
end
