# frozen_string_literal: true

require './solution'

describe 'solution' do
  inputs = [
    [[3, 8, 9, 7, 6], 3],
    [[0, 0, 0], 1],
    [[1, 2, 3, 4], 4],
    [[], 1]
  ]

  expecteds = [
    [9, 7, 6, 3, 8],
    [0, 0, 0],
    [1, 2, 3, 4],
    []
  ]

  context 'when testing the solution' do
    inputs.each_with_index do |array_shift, idx|
      array = array_shift[0]
      shifts = array_shift[1]
      context "given #{array} to shift by #{shifts}" do
        expected = expecteds[idx]
        it "should return #{expected}" do
          actual = solution(array, shifts)
          expect(actual).to eq expected
        end
      end
    end
  end
end
