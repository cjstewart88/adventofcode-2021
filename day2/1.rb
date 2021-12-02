instructions = File.read('input.txt').split("\n")
x = 0
y = 0

instructions.each do |i|
  instruction = i.split
  direction = instruction[0]
  distance = instruction[1].to_i

  case direction
  when 'forward'
    x += distance
  when 'up'
    y -= distance
  when 'down'
    y += distance
  end
end

puts x*y
