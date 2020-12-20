use strict;
print ("input angka yang akan dikalikan :\n");
my $x=<>;
my $y=<>;

kali ($x,$y);
print ("Hasil Kali :\n");
printKali();
print ("\n");
print ("Hasil Biner :\n");
printinTobin();
print ("\n");
print ("Jumlah angka 1 pada biner :\n");
printHitung1();

sub kali {
	my $a = 0;
	$a = $x * $y;
	# print ($a);
	return ($a);
}

sub printKali {
	my $a=kali();
	print ($a);
}

sub inTobin {
	my $bin = sprintf "%b", kali();
	# print ($bin);
	return ($bin);
}
sub printinTobin {
	my $a=inTobin();
	print ($a);
}
sub hitung1 {
	my $i=0;
	my $bin = inTobin();
	my @biner = split(undef,$bin);

	foreach my $j (@biner){
		if (&j==1){
			$i++;
		}else{

		}
	}
}

sub printHitung1{
	my $a=hitung1();
	print ($a);
}