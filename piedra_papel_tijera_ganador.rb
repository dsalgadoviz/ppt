
def jugar(piedra, papel, tijera, valor, empate) 
	random=Random.new
	while empate
		eleccion=gets.chomp

	cpu = random.rand(3)

	valor=asignarValor(eleccion, piedra, papel, tijera)

	empate=quienGana? 

	if == valor cpu 
		puts "Ha ocurrido un empate, juega de nuevo"
	elsif (valor == piedra && cpu == papel) || (valor == tijera && cpu == piedra) || (valor == papel && cpu == tijera) 
		puts "perdiste!"
		empate=false
	else
		puts "ganaste!"
		empate=false
		end
	end
end

def asignarValor(eleccion, piedra, papel, tijera)
	if eleccion == "piedra"
		piedra
	elsif eleccion == "papel"
		papel
	else
		tijera
	end
end

piedra=0
papel=1
tijera=2
valor=-1

empate=true