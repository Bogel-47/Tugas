class BangunDatar
    def initialize(s1, s2)
        @s1 = s1
        @s2 = s2
    end

    def Keliling
        print "Keliling : "
    end
    def Luas
        print "Luas : "
    end

end

class PersegiPanjang < BangunDatar
    def initialize(panjang, lebar)
        super(panjang, lebar)
    end

    def Keliling
        super
        puts ((@s1 + @s2) * 2)
    end
    def Luas
        super
        puts (@s1 * @s2)
    end
end

class Lingkaran < BangunDatar
    def initialize(jarijari)
        super(jarijari, jarijari)
    end
    def Keliling
        super
        puts (Math::PI * (2 * @s1))
    end
    def Luas
        super
        puts (Math::PI * (@s1**2))
    end
end

class Persegi < PersegiPanjang
    def initialize(sisi)
        super(sisi, sisi)
    end
    def Keliling
        super
    end
    def Luas
        super
    end
end
 
puts "Persegi Panjang"
v1 = PersegiPanjang.new(3, 4)
v1.Luas
v1.Keliling

puts "Persegi"
v2 = Persegi.new (10)
v2.Luas
v2.Keliling

puts "Lingkaran"
v3 = Lingkaran.new(21)
v3.Luas
v3.Keliling
