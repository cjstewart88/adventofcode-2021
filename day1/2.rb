input = File.read('input.txt').split.map(&:to_i)
elevationChangeType = input.map.with_index do |x,i|
  next if input.count-4 < i

  currentWindow = input[i..(i+2)].sum
  previousWindow = input[i-1..(i-1+2)].sum

  if currentWindow > previousWindow
    'increased'
  else
    'decreased'
  end
end
puts elevationChangeType.count('increased')
