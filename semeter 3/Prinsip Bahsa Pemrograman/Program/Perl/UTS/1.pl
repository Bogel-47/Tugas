use strict;

print ("Masukan 2 Buah Angka \n");
my $t = <STDIN>;
my $y = <STDIN>;

kali ($t , $y);

sub kali {
	my $x = 0;
	my $k = 0;
	$x = $t * $y;
	print ("Hasil Perkalian : ");
	print ($x);
	print ("\n");

	my $bin = sprintf "%b", $x;
	print ("Hasil Biner : ");
	print ($bin);

	my @spl = split(undef,$bin);
	foreach my $i (@spl)  
	{ 
		if ($i == 1){
			$k++;
		}
		else{

		}
	}
	print ("\nJumlah 1 di angka tersebut adalah \n");
	print ($k);
} 