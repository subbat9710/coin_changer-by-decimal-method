def make_change(amount)
	change = {}

    if amount > 0.19 and amount <= 0.20
    	change[:dime] = 2
    	amount -= 0.20
    end
    if amount > 0.09 and amount <= 0.19
    	change[:dime] = 1
    	amount -= 0.10
    end
	if amount > 0.04 and amount <= 0.09
		change[:nickel] = 1 
	    amount -= 0.05
	end      
	if amount > 0 and amount <= 0.04   
        change[:penny] = (amount * 100).round
    end
		change 
end