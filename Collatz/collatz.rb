
def collatz(n)

	if n%2 == 0
		n=n/2
	else
		n=3*n+1
	end
	
	puts n 

	collatz(n)
end

collatz(10)
