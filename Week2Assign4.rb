##String methods

"hello".capitalize #converts the first letter to H
"hello".delete "lo" #returns only the "hel"

#these strings will be useful for handle imputs from users and then
#comparing them to desired values. These can also be used for 
#data analysis and cleaning up data.

##Integer methods

10.next #returns 11
10.pred #returns 9
10.odd? #returns true if it's an odd number.

#Not sure, looks like a way to loop. Need to try this.
10.times do |x|
	print x, " "
end

##Float methods

#this is an intersting one. It's a simpler way to compare values

1.2 <=> 1 #-1,0,+1 for less than, equal to, or greater than, This would return +1

#rounding methods

1.5.round # = 2
1.2.ceil # = 2
1.6.floor # = 1