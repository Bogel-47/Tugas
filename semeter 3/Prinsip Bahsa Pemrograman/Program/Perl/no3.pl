use strict;
my $sallary = 100000;
my $bonus = 100000;
print "Masukan  sallary:";
my $sallary = <STDIN>;
print "Masukan bonus:";
my $bonus = <STDIN>;
if ($sallary < 100000){
	if ($bonus < 100000){
		print "YOU'RE NOT A BANKER";
	}
	if ($bonus > 100000){
		print "YOU WON THE LOTTERY, YOU'RE BUYING DINNER TONIGHT";
	}
}
if ($sallary>100000){
	if ($bonus < 100000){
		print "YOU'RE BANKER WINTH NO BONUS, YOU'RE BUYING DINNER TONIGHT";
	}
	if ($bonus > 100000){
		print "YOU'RE BANKER WITH A BIG BONUS, YOU'RE BUYING DINNER TONIGHT";
	}
}