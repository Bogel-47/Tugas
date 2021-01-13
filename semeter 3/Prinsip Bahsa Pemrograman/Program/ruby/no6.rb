class Parkir
    def initialize (nama, waktu)
        @nama = nama
        @waktu = waktu
    end
    def getnama()
        @nama
    end
    def getwaktu()
        @waktu
    end

    def struk()
        puts "merk : #{@nama}"
        puts "lama parkir : #{@waktu} jam"
    end
end

class Mobil<Parkir
    @@tarif = 200
    @@total = 0
    @@mobil_sport = ["Ferrari","Lamborghini"]
    @@lmpv = ["Avanza"]

    def initialize(nama,waktu)
        super(nama,waktu)
    end

    def struk()
        puts "\n Mobil"
        if @@mobil_sport.include?getnama()
            @@total = @@tarif + getwaktu * 60 * 10
        elsif @@lmpv.include?getnama()
            @@total = @@tarif + getwaktu * 60 * 0.1
        end

        super
        puts "Total Yang Harus Dibayar : $#{@@total} \n"
    end
end

class Motor < Parkir
    @@tarif = 100
    @@total = 0
    @@moge = ["Harley Davidson","Ducati Panigale V4"]
    @@mocil = ["Vario"]
    
    def initialize(nama,waktu)
        super(nama,waktu)
    end

    def struk()
        puts "\n Motor"
        if @@moge.include?getnama()
            @@total = @@tarif + getwaktu * 60 * 8
        elsif @@mocil.include?getnama()
            @@total = @@tarif + getwaktu * 60 * 0.05
        end

        super
        puts "Total Yang Harus Dibayar : $#{@@total}\n"
    end
end


mobil1 = Mobil.new("Ferrari",7)
mobil2 = Mobil.new("Lamborghini",1)
mobil3 = Mobil.new("Avanza",20)

motor1 = Motor.new("Harley Davidson",21)
motor2 = Motor.new("Ducati Panigale V4",2)
motor3 = Motor.new("Vario",10)


motor1.struk
mobil1.struk
motor2.struk
mobil2.struk
motor3.struk
mobil3.struk
