require_relative 'search_row'
require_relative 'search_column'
require_relative 'search_block'
require_relative 'available_rows_columns'
require 'pry'

# board =
#     [["-","6","-","3","2","5","4","8","7"],
#      ["3","4","2","8","6","7","1","5","9"],
#      ["5","8","7","9","1","4","6","3","2"],
#      ["2","9","5","1","4","6","8","7","3"],
#      ["4","1","3","7","8","2","9","6","5"],
#      ["6","7","8","5","3","9","2","4","1"],
#      ["1","5","4","2","7","8","3","9","6"],
#      ["7","2","6","4","9","3","5","1","8"],
#      ["8","3","9","6","5","1","-","2","-"]]


def narrow_logic(board)

  flag = false
  block_origins = {1=>[0,0],2=>[0,3],3=>[0,6],4=>[3,0],5=>[3,3],6=>[3,6],7=>[6,0],8=>[6,3],9=>[6,6] }

  9.times do |number|
    number += 1
    9.times do |block_number|
      block_number += 1
      row, column = block_origins[block_number]
      numbers_in_block = search_block(board, row, column)
      if !numbers_in_block.include?(number.to_s)
        flag_in_row = 0
        flag_in_col = 0
        remember_row = nil
        remember_column = nil
        available_rows, available_columns = available_rows_columns(row, column)
        available_rows.each do |block_row|
        values_in_row = search_row(board, block_row)
          if !values_in_row.include?(number.to_s)
            remember_row = block_row
            flag_in_row += 1
          end
        end
        if flag_in_row == 1
          values_in_col = ''
          available_columns.each do |block_column|
          values_in_col = search_column(board, block_column)
            if !values_in_col.include?(number.to_s)
              remember_column = block_column
              flag_in_col += 1
            end
          end
          if flag_in_col == 1 && (board[remember_row][remember_column] == "-")
            board[remember_row][remember_column] = number.to_s
            flag = true
          end

        end
      end
    end
  end
  flag
end

# narrow_logic(board)

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
