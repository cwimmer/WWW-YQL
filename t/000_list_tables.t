 # -*- perl -*-

use strict;
use warnings;
use Test::More;

use WWW::YQL;
use List::MoreUtils qw(any);

my $yql = WWW::YQL->new();
isa_ok($yql, 'WWW::YQL');

$yql->ua->env_proxy;

my $data = $yql->query("show tables");

ok( any { $_ eq 'yahoo.y.ahoo.it' } @{ $data->{'query'}{'results'}{'table'} }, 
    'found table yahoo.y.ahoo.it' );

done_testing();
exit(0);
