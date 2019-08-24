# frozen_string_literal: true

def solution(array, shift_count)
  while shift_count.positive? && array.length.positive?
    last_element = array.pop
    array.unshift last_element
    shift_count -= 1
  end
  array
end
