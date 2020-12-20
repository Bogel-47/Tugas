my @angka = <>;
print(gcd(@angka));

sub gcd {
  if($_[1] == 0){
  	return $_[0];
  } else{
  	return gcd($_[1], $_[0] % $_[1]);
  }
}