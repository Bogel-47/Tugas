use strict;

my @x = (1,2,3,4,5,6,7,8,9,10);

print (calc(@x),"\n");

sub calc{
	my $length = @_;
	my $sum = 0;

	foreach my $num(@_){
		$sum += $num;
	}

	return $sum/$length;
}