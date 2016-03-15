

card_number = 79927398713
card_number_array = card_number.to_s.chars.map(&:to_i)
  if card_number_array.count % 2 == 0
    card_number_array << 0
  end
result = card_number_array.map.with_index { |val, index| index % 2 == 0 ? val : val * 2}
result_summed = result.to_s.chars.map(&:to_i).reduce(:+)


if result_summed %10 == 0
  valid = true
  puts "The number is valid"
else
  valid = false
  puts "The number is invalid"
end


# puts card_number_array
# puts result

puts result_summed
