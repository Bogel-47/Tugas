use strict;

my @people = (["Clark", "Kent"], ["Lois", "Lane"], ["Bruce", "Wayne"]);
my $xarray = @people[0];
push (@${xarray},("Superman"));

pop(@people);

#menambah array ke 1 bagian akhir
$people[1][2] = "Reporter";

#menambah array ke 2
$people[2][0] = "Jimny";
$people[2][1] = "Olsen";
$people[2][2] = "Photographer";

print "matrix :\n";
foreach(@people){
	print join("",@{$_},"\n");
}
foreach(@people[-1]){
	print join("",@{$_});
}