use strict;
print "Masukan password";
my $password = <STDIN>;

	if ($password=~m/^(?!.*[ ])(?=.*[A-Z])(?=.*[!@#\$%\^&\-_*]).{10,}$/){
		print "Sukses\n";
	} else {
		print "Gagal\n";
	}