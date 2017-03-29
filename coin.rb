#def make_change(amount)
#	change = {}
#
#    if amount > 2.09 and amount <= 3
#    	change[:dollar] = 2
#    	amount -= 3
#    end
#    if amount > 1.09 and amount <= 2.09
#    	change[:dollar] = 2
#    	amount -= 2
#    end
#    if amount > 0.99 and amount <= 1.09
#    	change[:dollar] = 1
#    	amount -= 1
#    end
#   if amount > 0.69 and amount <= 0.99
#    	change[:quarter] = 3
#    	amount -= 0.75
#    end
#    if amount > 0.24 and amount <= 0.69
#    	change[:quarter] = 1
#    	amount -= 0.25
#    end
#    if amount > 0.19 and amount <= 0.24
#    	change[:dime] = 2
#    	amount -= 0.20
#    end
#    if amount > 0.09 and amount <= 0.19
#   	change[:dime] = 1
#    	amount -= 0.10
#    end
#	if amount > 0.04 and amount <= 0.09
#		change[:nickel] = 1 
#	    amount -= 0.05
#	end      
#	if amount > 0 and amount <= 0.04   
#        change[:penny] = (amount * 100).round
#    end
#		change 
#end
#---------------making shorter---------------
def make_change(amount)
	change = {}
	coins = {quarter: 0.25, dime: 0.10, nickel: 0.05, penny: 0.01}
    coins.each do |coin, value| 
        puts "coin = #{coin}"   
        puts "value = #{value}"  
	if amount >= value
		number_coins = amount/value
		change[coin] = number_coins
		amount -= value * number_coins
    end
   end
    change
end