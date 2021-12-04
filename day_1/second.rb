require '../util.rb'

numbers = parse_file_of_ints

sums = []
numbers.each_with_index do |num, index|
  next if index < 2
  sums << (num + numbers[index-1] + numbers[index-2])
end

previous = sums[0]
count = 0
sums.each do |s|
  if s > previous 
    count += 1
  end
  previous = s
end

puts "Count #{count}"
# 1748