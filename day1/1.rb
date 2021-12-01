input = File.read('input.txt').split.map(&:to_i)
elevationChangeType = input.map.with_index{ |x,i| x > (input[i-1] || 0) ? 'increased' : 'decreased' }
puts elevationChangeType.count('increased')
