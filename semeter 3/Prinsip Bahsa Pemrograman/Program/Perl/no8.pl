use strict;
print "Silahkan inputkan serial number :\n";
my $SN = <STDIN>;
if ($SN =~ m/^([\d]{2})-([\w]{5})-([\w]{6})$/) {
	print "Valid";
} else {
	print "Invalid";
}