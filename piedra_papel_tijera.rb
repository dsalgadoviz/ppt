
eleccion=gets.chomp # "tijera"

piedra=0
papel=1
tijera=2

random=Random.new
cpu = random.rand(3) # 0,1,2

valor=-1
if eleccion == "piedra" 
	valor = 0
elsif eleccion == "papel"
	valor=1
else
	valor=2
end

# tijera a papel, papel a piedra, piedra a tijera

if valor == cpu
	puts "empate"
elsif (valor == piedra && cpu == papel) || (valor == tijera && cpu == piedra) || (valor == papel && cpu == tijera) 
	puts "perdiste!"
else
	puts "ganaste!"
end
















	

