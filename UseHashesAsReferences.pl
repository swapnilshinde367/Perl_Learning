#! /usr/bin/perl -w

%hashStatesAndCities = ( 'MH', 'Pune', 'KA', 'Bangalore' );

# "\" makes variable to be used by reference
$strCity = \%hashStatesAndCities;

print $strCity->{'MH'} . "\n";

#or

print ${$strCity}{'KA'} . "\n";