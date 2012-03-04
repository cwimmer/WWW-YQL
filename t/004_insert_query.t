 # -*- perl -*-

use strict;
use warnings;
use Test::More;

use WWW::YQL;
use List::MoreUtils qw(any);

my $yql = WWW::YQL->new();

my $data = $yql->query("insert into yahoo.y.ahoo.it (url) values ('http://search.cpan.org/~cwimmer/')");

my $shorty=$data->{'query'}->{'results'}->{'url'};
$data = $yql->query("select * from yahoo.y.ahoo.it where url='".$shorty."'");
my $long=$data->{'query'}->{'results'}->{'url'};
like($long, qr|http://search.cpan.org/~cwimmer/|, "Select returns same as insert");
done_testing();
exit(0);
