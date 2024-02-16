input = File.read('data.csv')
lines = input.split(/\n/)

first_line = lines[0]
second_line = lines[1]

initial_values = second_line.split(/,/)
keys =  first_line.split(/,/)

# Initialize Hash
hash_1 = [{keys[0]=> initial_values[0] , keys[1] => initial_values[1], keys[2] => initial_values[2]}]

hashes = []
hashes << hash_1
# For all lines after the initial values
third_and_pass = lines[2..lines.length]

third_and_pass.each do |value|
  non_init_values =  value.split(/,/)
  hash_iterate = [{keys[0]=> non_init_values[0] , keys[1] => non_init_values[1], keys[2] => non_init_values[2]}]
  hashes << hash_iterate
end

print hashes
