require 'pp'

sample_array = [3,5,1,2,7,9,8,13,25,32]
pp 'sample_array'
pp sample_array
pp 'print the sum of all numbers in the array'
pp sample_array.reduce(0){|sum, i| sum += i}

pp 'returns an array only include numbers that are gt 10'
def arr_include_gt_10(arr)
  arr.reject{|i| i <= 10}
end
pp arr_include_gt_10(sample_array)

