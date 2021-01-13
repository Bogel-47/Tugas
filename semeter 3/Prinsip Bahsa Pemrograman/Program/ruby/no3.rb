def validasi(input)
    print "yang anda tulis : #{input}\n"
    if input.match (/2021/)
        puts "Ada 2021"
    else
        puts "Tidak ada 2021"
    end
    if(input.split("").length > 100)
        puts "Banyak kali sampe lebih dari 100"
    end
end

print "Masukkan Kata \n"

while input = gets
    input.chomp!
    if input.nil? or input.empty?
        print "string kosong bang :)"
        exit
    else
        validasi(input)
        exit
    end
end