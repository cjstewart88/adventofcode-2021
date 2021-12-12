report = File.read('input.txt').split("\n").map{|x|x.split('')}

gamma_rate = ''
epsilon_rate = ''

col_data = {
  0 => { 0 => 0, 1 => 0 },
  1 => { 0 => 0, 1 => 0 },
  2 => { 0 => 0, 1 => 0 },
  3 => { 0 => 0, 1 => 0 },
  4 => { 0 => 0, 1 => 0 },
  5 => { 0 => 0, 1 => 0 },
  6 => { 0 => 0, 1 => 0 },
  7 => { 0 => 0, 1 => 0 },
  8 => { 0 => 0, 1 => 0 },
  9 => { 0 => 0, 1 => 0 },
  10 => { 0 => 0, 1 => 0 },
  11 => { 0 => 0, 1 => 0 }
}

report.each do |bits|
  bits.each_with_index do |bit,i|
    col_data[i][bit.to_i] += 1
  end
end

col_data.keys.each do |k|
  if col_data[k][0] > col_data[k][1]
    gamma_rate += '0'
    epsilon_rate += '1'
  else
    gamma_rate += '1'
    epsilon_rate += '0'
  end
end

puts gamma_rate.to_i(2) * epsilon_rate.to_i(2)
