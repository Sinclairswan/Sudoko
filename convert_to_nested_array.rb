## convert to a Nested Array  - There are 81 characters! we need 9 arrays in one big array
def convert_to_nested_array(string)
pre_game = string.scan(/.{9}/)
game = pre_game.map{|g| g.split("") }
 game

end
str = "1-58-2----9--764-52--4--819-19--73-6762-83-9-----61-5---76---3-43--2-5-16--3-89--"
convert_to_nested_array(str)
