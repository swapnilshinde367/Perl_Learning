#! /usr/bin/perl -w
use strict;

print '__________________________________________' . "\n";
# Noraml or scalar variable
my $strMyName = 'Swapnil Shinde';
print 'This will print name: ' . $strMyName . "\n";
print '__________________________________________' . "\n";

#Array
my @arrintNumbers = ( 1, 2 , 3, 4, 5 );
print 'Printing whole array: ';
print  @arrintNumbers;
print "\n";
print '__________________________________________' . "\n";

#print single element
print 'Printing single element of array:' . "\n";
print @arrintNumbers[3] . "\n" . '__________________________________________' . "\n";

# Print in loop
print 'Printing array via loop:' . "\n";
foreach( @arrintNumbers ) {
	print $_ . "\n";
}
print '__________________________________________' . "\n";

#Printing the cout of array
print 'Printing array count:' . "\n";
print  scalar @arrintNumbers;
print "\n" . '__________________________________________' . "\n";

#hashes, it needs to be in even number else it gives warning, its nothing but key, value pair of array
my %hashstrCars = ( 'BMW', '320D', 'AUDI', 'X5' );
print 'Printing whole hash:' . "\n";
print %hashstrCars;
print "\n" . '__________________________________________' . "\n";

print 'Printing array via loop:' . "\n";
foreach( %hashstrCars ) {
        print $_ . "\n";
}
print '__________________________________________' . "\n";

#print single element
print 'Printing single element of hash:' . "\n";
print $hashstrCars{'BMW'} . "\n" . '__________________________________________' . "\n";

#Printing the cout of array
print 'Printing array count:' . "\n";
print  scalar keys %hashstrCars;
print "\n" . '__________________________________________' . "\n";

