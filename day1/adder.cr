frequencies = [] of Int32

File.each_line("input") do |line|
  frequencies << line.to_i
end

puts frequencies.sum
