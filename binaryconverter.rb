def decimal_to_binary
  puts "What decimal number would you like to convert to binary?"
  number = gets.chomp.to_i
  result = number.to_s(2)
 puts "The decimal number #{number} = #{result} in binary."
end

def binary_to_decimal
  puts "What binary number would you like to convert to decimal?"
  number = gets.chomp
  result = 0

  numberofdigits = number.to_s.length
  digits = number.to_s.split("")

  for i in 0..digits.length
    a = digits.length - i
    if digits[a] == "1"
      if i == 0
        result = result + 1
      else
      result = result + 2**(i-1)
    end
  end
end

puts "The binary number #{number} = #{result}."
end

puts "1. Binary to Decimal"
puts "2. Decimal to Binary"
input = gets.chomp
if input.include? "1"
 binary_to_decimal
else
  decimal_to_binary
end
