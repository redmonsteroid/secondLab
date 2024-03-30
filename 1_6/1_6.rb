def check_char(str)
    glas_let = "aeiouyAEIOUY"
    soglas_let = "bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ"
    glas_count = 0
    soglas_count = 0
    
    str.each_char do |ch| / (сhar ch : str) - аналог / 
        if glas_let.include?(ch)
            glas_count += 1
        elsif soglas_let.include?(ch)
            soglas_count += 1
        end
    end
    
    if glas_count > soglas_count
        return "Да"
    elsif glas_count < soglas_count
        return "Нет"
    else
        return "Одинаково"
    end
end

puts "Enter your string:"
str = gets.chomp
puts check_char(str)
