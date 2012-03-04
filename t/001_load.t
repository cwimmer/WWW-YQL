 # -*- perl -*-

use strict;
use warnings;
use Test::More;

BEGIN { use_ok('WWW::YQL') };

can_ok('WWW::YQL', ('new'));

use WWW::YQL;
my $yql=new WWW::YQL();
    
isa_ok($yql, 'WWW::YQL');

done_testing();
