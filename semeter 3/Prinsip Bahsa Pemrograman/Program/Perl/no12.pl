use strict;

my @x = (1,2,3,4,5,6,7,8,9);
print ("Min : ", min(@x),"\n");
print ("Max : ", max(@x), "\n");
sub max {
	my $result = @_[0];

	foreach my $num(@_){
		if ($num>$result) {
			$result=$num;
		}
	}
	return $result;
}

sub min {
	my $result = @_[0];

	foreach my $num(@_){
		if ($num<$result) {
			$result=$num;
		}
	}
	return $result;
}
