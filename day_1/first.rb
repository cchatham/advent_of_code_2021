require '../util.rb'

numbers = parse_file_of_ints

previous = numbers[0]
count = 0
numbers.each do |num|
  if num > previous 
    count += 1
  end
  previous = num
end

puts "Count #{count}"
# 1722