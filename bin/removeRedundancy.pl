#!/usr/bin/perl

use IO::File;

my $file1 = shift || die $usage;
my $file2 = shift;

my %uniq;


if (-s $file2)
{
	my $fh1 = IO::File->new($file1) || die "Can not open input file $file1 $!\n";
	my $fh2 = IO::File->new($file2) || die "Can not open input file $file2 $!\n";

	while(<$fh1>)
	{
	
	}
	while(<$fh2>)
	{

	}
	
	$fh1->close;
	$fh2->close;
	

	my $out1 = $file1.".uniq";
	my $out2 = $file1.".uniq";
	my $fo1 = IO::File->new($out1) || die "Can not open output file $out1 $!\n";
	my $fo1 = IO::File->new($out1) || die "Can not open output file $out1 $!\n";

	foreach my $id (sort keys %uniq)
	{
		my @seq = split(/\t/, $uniq{$id});
		print $fo1 ">$id\n$seq[0]\n";
		print $fo2 ">$id\n$seq[1]\n";
	}
	$fo1->close;
	$fo2->close;
}
else
{
	my $out = $file1.".uniq";
	my $fo = IO::File->new(">".$out) || die "Can not open output file $out $!\n"; 
	my $fh = IO::File->new($file1) || die "Can not open input file $file1 $!\n";
	while(<$fh>)
	{
		chomp;
		my $id = $_;
		$format = '';
		if 	( $id =~ m/^>/ ) { $format = 'fasta'; $id =~ s/^>//; }
		elsif 	( $id =~ m/^@/ ) { $format = 'fastq'; $id =~ s/^@//; }
		else	{ die "Error at format for read $id.\n"; }
	
		$seq = <$fh>; 
		chomp($seq);

		unless ( $uniq{$seq} )
		{
			$uniq{$seq} = 1;
			print $fo ">".$id."\n".$seq."\n";
		}

		if ( $format eq 'fastq' ) { <$fh>; <$fh>; }
	}
	$fh->close;
	$fo->close;
}


