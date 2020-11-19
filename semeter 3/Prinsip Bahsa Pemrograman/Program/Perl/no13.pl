use strict;

print ("Masukkan Kata : ");
my $string = <STDIN>;

count($string);

sub count {
	my @array = split(' ', @_[0]);
	my $word = @array;
	my $char = 0;
	foreach my $words (@array){
		$char += length($words);
	}
	print ("Jumlah kalimat :", $word, "\n");
	print ("Jumlah kata :", $char);
}