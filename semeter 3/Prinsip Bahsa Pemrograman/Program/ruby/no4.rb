array = ["polban", "jtk", "pbp", 2021] 
words = array.map{|x| "%" << x.to_s << "__" }
puts words.join