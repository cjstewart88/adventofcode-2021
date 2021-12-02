instructions = File.read('input.txt').split("\n")
x = 0
y = 0
aim = 0

instructions.each do |i|
  instruction = i.split
  direction = instruction[0]
  distance = instruction[1].to_i

  case direction
  when 'forward'
    x += distance
    y += (aim * distance)
  when 'up'
    aim -= distance
  when 'down'
    aim += distance
  end
end

puts x*y
