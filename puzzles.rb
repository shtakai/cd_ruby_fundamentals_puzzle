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

pp 'create an name array '
name_array = %w/John  KB  Oliver  Cory  Matthew  Christopher/
pp name_array
name_array.shuffle.each{|name| pp name}
pp name_array.select{|name| name.size > 5}

pp 'create a-z array'
letter_array = ('a'..'z').to_a
shuffled_letter_array = letter_array.shuffle
pp shuffled_letter_array.last
pp ([shuffled_letter_array.first] - %w/a i u e o/).none? ? "MESSAGE :#{shuffled_letter_array.first}" : shuffled_letter_array.first

pp 'generate an array with 10 random numbers bet 55-100'
random_array = 10.times.map{(55..100).to_a.sample}
pp random_array
pp "sort:#{random_array.sort} min:#{random_array.min} max:#{random_array.max}"
