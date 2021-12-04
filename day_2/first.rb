require '../util.rb'

# forward, up/down (depth) all start at 0
# multiply together for final stop place

horizontal = 0
depth = 0

parse_file_of_instructions.each do |instruct|
  case instruct[0]
  when 'forward'
    horizontal += instruct[1]
  when 'up'
    depth -= instruct[1]
  when 'down'
    depth += instruct[1]
  else
    puts 'WTF'
  end
end

puts "Horizontal #{horizontal} Depth #{depth}"
puts "Answer #{horizontal * depth}"
# 1561344