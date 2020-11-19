use strict;

my @x = (1,2,3);
my @y = (4,5,6);

print (join(" ", add2Array(@x, @y)),"\n");

sub add2Array{
	my $lenght = @_;
	my @x = @_[0 .. ($lenght/2)-1];
	my @y = @_[$lenght/2 .. $lenght-1];

	my @result;

	for (my $i = 0; $i <$lenght/2 ; $i++) {
		push(@result,@x[$i]+@y[$i]);
	}
	return @result;
}