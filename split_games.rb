def split_games(boardstrings)
## you are receiving 15 games that are 81 characters across
## return an array with 15 string
array_of_strings = boardstrings[13].scan(/.{81}/)
array_of_strings


end
