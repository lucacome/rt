use strict;
use warnings;
use RT;
use RT::Test nodb => 1, tests => 7;

use RT::Squish;

my $squish = RT::Squish->new();
for my $method ( qw/Content ModifiedTime ModifiedTimeString Key/ ) {
    can_ok($squish, $method);
}
like( $squish->Key, qr/[a-f0-9]{32}/, 'Key is like md5' );
ok( (time()-$squish->ModifiedTime) <= 2, 'ModifiedTime' );

use RT::Squish::CSS;
can_ok('RT::Squish::CSS', 'Style');
