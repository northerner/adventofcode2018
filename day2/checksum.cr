doubles = 0
triples = 0

File.each_line("input") do |line|
  has_double = false
  has_triple = false

  line.each_char do |char|
    case line.count(char)
    when 2
      has_double = true
    when 3
      has_triple = true
    end
  end

  doubles = doubles + 1 if has_double
  triples = triples + 1 if has_triple
end

puts doubles * triples
