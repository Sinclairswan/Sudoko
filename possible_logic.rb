require_relative 'search_row'
require_relative 'search_column'
require_relative 'search_block'


# def possible_logic(hash,board)
#   flag == false
#   ##go through each individual cell of board
#     ##Checks if board cell has any number
#         ## exclude all numbers in hash[coord] = nil  ////// Lets move this to initiation
#         ## basically do nothing, skip what is below.
#     ##Else Checks if board cell is empty "-"
#         ## exclude all numbers in the row (method search_row? - return array of what is in row)
#         ## exclude all numbers in column (method search column)
#         ## exclude all numbers in block (used search_block method)
#         ## check if hash[coord].length == 1 (basically there is only one possibility left )
#            ## updated board at coord with value
#            ## set flag to true
#            ## hash[coord] = nil
#   ##repeat through all board cells
#   ##return Flag
# end

##returns True or False depending if board was edited

# WE NEED TO CHANGE VALUES TO INTEGERS INSTEAD OF ARRAYS

# def possible_logic(coordinates_hash,nested_array)
#   present = []
#   row = search_row(nested_array, coordinates_hash[0].keys[0][0])
#   column = search_column(nested_array, coordinates_hash[0].keys[0][1])
#   present = row + column
#   p "new line"
#   # present << search_block(nested_array, coordinates_hash[0].keys[0][0])
#   # p present.join
#   all = coordinates_hash[0][[0,0]]
#   p all
#   p present
#   result =  all - present
#   p result
# end
# coordinates = [{[0, 0]=>[1, 2, 3, 4, 5, 6, 7, 8, 9]}]
# nested_array = [["1", "-", "5", "8", "-", "2", "-", "-", "-"], ["-", "9", "-", "-", "7", "6", "4", "-", "5"], ["2", "-", "-", "4", "-", "-", "8", "1", "9"], ["-", "1", "9", "-", "-", "7", "3", "-", "6"], ["7", "6", "2", "-", "8", "3", "-", "9", "-"], ["-", "-", "-", "-", "6", "1", "-", "5", "-"], ["-", "-", "7", "6", "-", "-", "-", "3", "-"], ["4", "3", "-", "-", "2", "-", "5", "-", "1"], ["6", "-", "-", "3", "-", "8", "9", "-", "-"]]
# p possible_logic(coordinates, nested_array)

# until index == possible.length
#   index += 1 every time
#   row += 1 every 9 times
#   column += 1 every 9 times
#   possible[(0-80)index][[row(0-8),column(0-8)]] -->possible values
#   every time, we subtract search row from the currently accessed value's possible array

#   create method to iterate through each cell


