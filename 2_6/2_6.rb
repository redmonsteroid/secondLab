puts "Enter numbers : "
input = gets.chomp

numbers = input.split(" ")
count = 0

numbers.each do |number|
    num = number.to_i
    if num >= 100
        digit_count = num.to_s.length
        if digit_count % 2 != 0
            count += 1
        end
    end
end

puts count