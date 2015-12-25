#!/ur/bin/perl -w
use File::Monitor;

my $objMonitor = File::Monitor->new();

#$objMonitor->watch( 'what.txt' );

$objMonitor->callback( 'what.txt', sub {
        my ($file_name, $event, $change) = @_;
        warn "$file_name has changed\n";
	print "$file_name has changed\n";
} );

$objMonitor->watch( {
        name        => '/home/swapnil/perl_code/NewCodeForPerl',
        recurse     => 1,
        callback    => {
            files_created => sub {
                my ($name, $event, $change) = @_;
                print $name. "\n". $event . "\n" . $change;
            }
        }
} );

$objMonitor->scan;
while(1) {
 my @changes = $objMonitor->scan;
    for my $change (@changes) {
        print $change;
	print "\n";
    }
}
