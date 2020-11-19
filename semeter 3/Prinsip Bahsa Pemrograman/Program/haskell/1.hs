cek x =
	if 80<=x && x<=100
		then print "A"
	else if 75<=x && x<=79
		then print "AB"
	else if 70<=x && x<=74
		then print "B"
	else if 65<=x && x<=69
		then print "BC"
	else if 60<=x && x<=64
		then print "C"
	else if 50<=x && x<=59
		then print "D"
	else print "E"
