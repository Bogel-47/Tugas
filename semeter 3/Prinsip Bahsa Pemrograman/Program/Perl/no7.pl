use strict;
print "Silahkan inputkan domain :\n";
my $domain = <STDIN>;
if ($domain =~ m/^(.+[a-z0-9])\.(.+[a-z0-9])\.(com|id|net)$/) {
	print "Valid";
} else {
	print "Invalid";
}