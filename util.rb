
# Assumes input.txt file is in the local directory.
def parse_file_of_ints
  return File.readlines('input.txt').map { |line| line.to_i }
end

# Returns an array of arrays: [['forward', 2], ['up', 3]]
def parse_file_of_instructions
  return File.readlines('input.txt').map do |line| 
    parts = line.split(" ")
    parts[1] = parts[1].to_i
    parts
  end
end