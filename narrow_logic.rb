require_relative 'search_row'
require_relative 'search_column'
require_relative 'search_block'
require_relative 'available_rows_columns'

def narrow_logic(board)
  flag = false
  block_origins = {0=>[0,0],1=>[0,3],2=>[0,6],3=>[3,0],4=>[3,3],5=>[3,6],6=>[6,0],7=>[6,3],8=>[6,6] }

  [1..9].times do |number|
    [0..8].times do |block_number|
      row, column = block_origins[block_number]
      numbers_in_block = search_block(board, row, column) # all numbers present in block
      if !numbers_in_block.include?(number)
        flag_in_row = 0
        flag_in_col = 0
        remember_row = nil
        remember_column = nil
        available_rows, available_columns = available_rows_columns(row, column) # find all available rows and columns in block
        available_rows.each do |block_row|
        values_in_row = search_row(board, block_row) # return values of that row
          if !values_in_row.include?(number)
            remember_row = block_row
            flag_in_row += 1
          end
        end
        if flag_in_row == 1
          available_columns.each do |block_column|
          values_in_column = search_column(board, block_column)
            if !values_in_column.include?(number)
              remember_column = block_column
              flag_in_col += 1
            end
          end
          if flag_in_col == 1
            board[remember_row][remember_column] = number
          end
        end
      end
    end
  end
  flag
end

## set flag = false
  ## for each number [1..9]
  ## for each block  [0..8]## use hash for blocks to get coordinates ---
    ## Check if block has Number  ---
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
