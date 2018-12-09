require "levenshtein"

File.each_line("input") do |line_x|
  File.each_line("input") do |line_y|

    if Levenshtein.distance(line_x, line_y) == 1
      in_common = ""
      line_x_chars = line_x.chars
      line_y_chars = line_y.chars

      line_x_chars.each_with_index do |char, i|
        if char == line_y_chars[i]
          in_common = in_common + char
        end
      end
      puts in_common
      break
    end

  end
end
