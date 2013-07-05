#!/usr/bin/perl


my $binum = unpack("B32", pack("N", 66));

print $binum."\n";

my @a = [ reverse( split(//, sprintf("%010d", $binum) ) ) ];
#my $a = sprintf("%010d", $binum);

print join(" ", @a),"\n";

print "\n===\n";

my @ta = ("you", 0,"not","alone");
print $#ta;

print "\n===\n";


#################################################################

my $test = 0;

for (1 .. 10)
{
	$_ == 5 or next;
	$_ == 8 and $check = 1;
	print $_."\t$test\t$check\n";
}
