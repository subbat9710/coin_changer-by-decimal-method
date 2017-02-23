def make_change(amount)
	change = {}
	if amount >= 0.10
		change[:dime] = 0.10
		amount -= 0.10
	end
	if amount >= 0.05 
		change[:nickel] = 0.05  
	    amount -= 0.05       
	end
	if  amount >= 0.01    
        change[:penny] = amount 
   end
		change  
end
	