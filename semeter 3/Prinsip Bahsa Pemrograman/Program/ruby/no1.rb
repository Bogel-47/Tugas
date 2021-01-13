def palindrome(x)
    kata = x.length
    array_kata = kata - 1
    dibalik = ""
   
    for i in 0..array_kata
     dibalik += x[array_kata - i]
    end
    if dibalik == x
     print ("#{x} palindrome")
    else
     print ("#{x} palindrome")
    end
   end

  
print "masukin kata untuk cek palindrom \n"
  while kata = gets
    kata.chomp!
    if kata.nil? or kata.empty?
        print "string kosong bang :)"
        exit
    else
        palindrome(kata)
        exit
    end
end
