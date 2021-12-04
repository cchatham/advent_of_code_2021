require '../util.rb'

# forward, up/down (depth), aim all start at 0
# up/down affects aim
# depth is affected by forward using aim
# multiply together for final stop place

aim = 0
horizontal = 0
depth = 0

parse_file_of_instructions.each do |instruct|
  case instruct[0]
  when 'forward'
    horizontal += instruct[1]
    depth += aim * instruct[1]
  when 'up'
    aim -= instruct[1]
  when 'down'
    aim += instruct[1]
  else
    puts 'oops'
  end
end

puts "Horizontal #{horizontal} Depth #{depth}"
puts "Answer #{horizontal * depth}"
# 1848454425