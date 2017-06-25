require 'pry'
def init_possible_hash(nested_array)
end ## create the Possible Hash fill with 1-9   /// exclude all numbers in hash[coord] = nil  ////// Lets move this to initiation





# {[0,0] => [1,2,3,4,5,6,7,8,9]}
#  []}
#   ir
# Garret's solution
# board = []
#  [1,2,3,4,'-'].each_with_index do |x,i|
#   board << { "0-#{i}"=>{:possibilities=>[1], :current=> x} }
# end
# p board

# Jo's solution
coordinates = [[0,0],[0,1], [0,2], [0, 3]]

def hash_creation(coordinates)
  possibilities = {}
  arr = []
  coordinates.each_index do |index|
    # p coordinates[index]
    possibilities = { coordinates[index] => [1, 2, 3, 4, 5, 9] }
    arr << possibilities
  end
# p possibilities
 arr
end

def add_more_hash

possibilities = hash_creation(coordinates)

# possibilities[[0, 5]] = [1, 2, 3, 4]
# p possibilities
