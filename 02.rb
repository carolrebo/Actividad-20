module Formula
	def perimetro
		@p= 2*(@largo+@ancho)		
	end

	def area
		@a= @largo*@ancho
	end
end

class Rectangulo
	include Formula
	def initialize(largo, ancho)
		@largo = largo
		@ancho = ancho
	end
	def lados
		"Rectangulo: Lado #{@largo} - Ancho #{@ancho}"
	end

end

class Cuadrado
	include Formula
	def initialize(lado)
	@lado = lado
	@largo = lado
	@ancho = lado
	
	end
	
	def lados
		"Cuadrado: Lados #{@lado}"
	end
end


r = Rectangulo.new(3,5)
puts r.lados
#puts r.perimetro
puts "Perimetro del rectanculo #{r.perimetro}"
puts "Area del rectangulo #{r.area}"

puts "-------------------------------"

c = Cuadrado.new (2)
puts c.lados
puts "Area del cuadrado #{c.area}"
puts "Perimetro del cuadrado #{c.perimetro}"