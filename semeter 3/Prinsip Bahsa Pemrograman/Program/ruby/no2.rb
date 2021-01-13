class Vehicle
    def initialize(tahun)
      @tahun = tahun
    end
      
    def status
      print "Tahun Pembuatan: #@tahun\n"
    end
  end

module Penghitung
    def lebihTua?
        return @tahun < 1981
    end
end

class Car < Vehicle
    include Penghitung
    def initialize (brand, model, tahun)
        super (tahun)
        @brand = brand
        @model = model        
    end

    def status
        print "merk: #@brand \n"
        print "model: #@model \n"
        super
    end
end


v1 = Vehicle.new(2021)
v2 = Car.new("Honda","NSX",2019)
v3 = Car.new("Toyota","Supra",1993)
v4 = Car.new("Rolls-Royce", "Silver Shadow", 1972)

v1.status
puts "\n"
v2.status
puts "is that more than 30 years ago? #{v2.lebihTua? }"
puts "\n"
v3.status
puts "is that more than 30 years ago? #{v3.lebihTua? }"
puts "\n"
v4.status
puts "is that more than 30 years ago? #{v4.lebihTua? }"