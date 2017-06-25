require_relative '../search_row'
require_relative '../search_column'
require_relative '../search_block'
require_relative '../available_rows_columns'
require_relative '../narrow_logic'
require_relative '../narrow_logic_reversed'

describe "search functions" do
  let(:board) {
    [["-","6","-","3","2","5","4","8","7"],
     ["3","4","2","8","6","7","1","5","9"],
     ["5","8","7","9","1","4","6","3","2"],
     ["2","9","5","1","4","6","8","7","3"],
     ["4","1","3","7","8","2","9","6","5"],
     ["6","7","8","5","3","9","2","4","1"],
     ["1","5","4","2","7","8","3","9","6"],
     ["7","2","6","4","9","3","5","1","8"],
     ["8","3","9","6","5","1","-","2","-"]]
  }

  let(:solved_board) {
    [["9","6","1","3","2","5","4","8","7"],
     ["3","4","2","8","6","7","1","5","9"],
     ["5","8","7","9","1","4","6","3","2"],
     ["2","9","5","1","4","6","8","7","3"],
     ["4","1","3","7","8","2","9","6","5"],
     ["6","7","8","5","3","9","2","4","1"],
     ["1","5","4","2","7","8","3","9","6"],
     ["7","2","6","4","9","3","5","1","8"],
     ["8","3","9","6","5","1","7","2","4"]]
  }

it "complete board" do
  narrow_logic(board)
  expect(board).to eq solved_board
  end
it "complete board with Reverse Logic" do
  narrow_logic_reversed(board)
  expect(board).to eq solved_board
  end
it "complete board" do
  expect(narrow_logic(board)).to eq true
  end
it "complete board with Reverse Logic" do
  expect(narrow_logic_reversed(board)).to eq true
  end
end



