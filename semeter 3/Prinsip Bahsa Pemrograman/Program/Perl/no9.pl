use strict;
my @array = ("Alamat","aku","Alamat04","Handphone","03","02","z9");
my @result = sorting(@array);
print "@result";

sub sorting {
	my @array;
	my @numb;
	foreach my $word(@_){
		if ($word =~ m/^[0-9]/) {
			push(@numb,$word);
		}else{
			push(@array,$word);
		}
	}
	@array=sort(@array);
	@numb=sort(@numb);
	push(@array,@numb);
	return @array;
}