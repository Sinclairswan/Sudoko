require_relative '../search_row'
require_relative '../search_column'
require_relative '../search_block'
require_relative '../available_rows_columns'

describe "search functions" do
  let(:board) {
    [["1","2","3","4","5","-","7","8","-"],
     ["1","2","-","4","5","6","7","8","-"],
     ["1","2","3","4","5","6","7","8","-"],
     ["1","2","3","-","5","6","7","8","-"],
     ["1","2","3","4","5","6","7","8","-"],
     ["1","2","3","-","5","6","-","8","-"],
     ["-","-","-","-","-","-","-","-","-"],
     ["1","-","3","4","-","6","7","8","-"],
     ["1","2","3","4","5","6","-","8","-"],]
  }

it "give all the numbers in a row" do
  expect(search_row(board, 4)).to eq ["1","2","3","4","5","6","7","8"]
  end

it "give all the numbers in a row" do
  expect(search_row(board, 1)).to eq ["1","2","4","5", "6","7","8"]
  end

it "give all the numbers in a row" do
  expect(search_row(board, 6)).to eq []
  end

# it "give all the numbers in a row" do
#   expect(search_row(board, 1)).to eq to_contain?["1","2","6","5","4","7","8","9"]
#   end

it "give all the numbers in a column" do
  expect(search_column(board, 0)).to eq ["1", "1", "1", "1", "1", "1", "1", "1"]
  end

it "give all the numbers in a column" do
  expect(search_column(board, 8)).to eq []
  end

it "give block43" do
  expect(search_block(board, 1, 2)).to eq ["1","2","3","1","2","1","2","3"]
  end

it "give block47" do
  expect(search_block(board, 0, 0)).to eq ["1","2","3","1","2","1","2","3"]
  end

it "give block1" do
  expect(search_block(board, 8, 6)).to eq ["7", "8", "8"]
  end

it "give block1" do
  expect(search_block(board, 8, 6)).to eq ["7", "8", "8"]
  end




end
