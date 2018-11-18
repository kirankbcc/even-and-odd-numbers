#!/usr/bin/perl

##########################################
# FileName: evenAndOdd.pl
# Description: Generate PascalsTriangle
#
# CreatedBy: Kiran Babu Chinnam on 18-11-2018
# ModifiedBy: Kiran Babu Chinnam on 19-11-2018
##########################################

use strict;
use warnings;

print "enter a number for Even/Odd Numbers:";
chomp(my $n = <>);

die "*** $0  Usage ***\nenter a number for Even/Odd Numbers:<n>\n" if($n !~ /\d+/);

print "\n***result start***\n";

##########################################
# Even/Odd numbers using foreach loop
##########################################
print "\nEven Numbers for given number $n (Using 'foreach'):\n";

foreach(1..$n)
{
	print "$_\t" if($_%2 == 0);
}

print "\n\nOdd Numbers for given number $n (Using 'foreach'):\n";

foreach(1..$n)
{
	print "$_\t" if($_%2 != 0);
}
print "\n\n";

##########################################
# Even/Odd numbers using grep
##########################################

my @even = grep { $_%2 == 0 } (1..$n);
my @odd = grep { $_%2 != 0 } (1..$n);

print "\nEven Numbers for given number $n (Using 'grep'):\n";
print join "\t",@even,"\n\n";

print "\nOdd Numbers for given number $n (Using 'grep'):\n";
print join "\t",@odd,"\n\n";

print "***result end***\n";
