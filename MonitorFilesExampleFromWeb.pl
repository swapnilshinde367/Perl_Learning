#!/usr/bin/perl

use strict;
use warnings;
use File::Monitor;
use File::Monitor::Object;
#use File::Copy::Recursive qw(fcopy rcopy dircopy fmove rmove dirmove);

my $wFile="what.txt";
my $wFileMonitor = File::Monitor->new();
$wFileMonitor->watch($wFile);
$wFileMonitor->scan;

while (1){
  my @changes = $wFileMonitor->scan;

  foreach my $object (@changes) {
    my $modified = $object->mtime;
      print "$wFile changed\n";
     # fcopy ("$wFile","c:\\newpath"); # automatic backup if the file has been modified
}
}
