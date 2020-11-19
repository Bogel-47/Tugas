use strict;
print "Masukan password  : \n";
my $password = <STDIN>;

	if ($password=~m/^(?!.*[ ])(?=.*[A-Z])(?=.*[a-z])(?=.*[!@#\$%\^&\-_*]).{10,}$/){
		print "Sukses\n";
	} else {
		print "Gagal\n";
	}