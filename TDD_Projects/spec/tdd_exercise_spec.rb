require 'rspec'
require 'tdd_exercise'

describe '#remove_dups' do
  subject(:method){ Exercise.new([]) }
  it "takes an empty array and returns an empty array" do
    expect(method.remove_dups).to eq([])
  end

  it "takes an array of numbers and returns of unique numbers" do
    method.array = [1, 2, 1, 3, 3]
    expect(method.remove_dups).to eq([1,2,3])
  end
end

describe '#two_sum' do
  subject(:method) { Exercise.new([]) }
  it "takes an empty array and returns an empty array" do
    expect(method.two_sum).to eq([])
  end
  it "takes array with integers and returns 2D array of 1" do
    method.array = [-1, 0, 1]
    expect(method.two_sum).to eq([[0, 2]])
  end

  describe '#my_transpose' do
    subject(:method) { Exercise.new([]) }
    it "given array transposed into new array" do
      method.array = [
    [0, 1, 2],
    [3, 4, 5],
    [6, 7, 8]
    ]
      expect(method.my_transpose).to eq([[0, 3, 6],
              [1, 4, 7],
              [2, 5, 8]])
    end
  end

  describe '#stock_picker' do
    subject(:method) { Exercise.new([])}
    it "given array of stocks" do

    end
  end

end
