frequencies = Set{0}
current_frequency = 0
complete = false

while !complete
  File.each_line("input") do |line|
    current_frequency = current_frequency + line.to_i

    if (frequencies.includes? current_frequency)
      puts current_frequency
      complete = true
      break
    end

    frequencies << current_frequency
  end
end

