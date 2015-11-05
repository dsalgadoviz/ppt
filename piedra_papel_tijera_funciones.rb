piedra=0
papel=1
tijera=2
valor=-1

empate=true

def jugar(piedra, papel, tijera, valor, empate)
	random=Random.new
	while empate
		eleccion=gets.chomp
		
		cpu = random.rand(3)
		
		if eleccion == "piedra" 
			valor=piedra	
		elsif eleccion == "papel"
			valor=papel
		else
			valor=tijera
	end

# tijera a papel, papel a piedra, piedra a tijera

	if valor == cpu
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

piedra=0
papel=1
tijera=2
valor=-1

empate=true

jugar(piedra, papel, tijera, valor, empate)