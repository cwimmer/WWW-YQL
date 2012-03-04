 # -*- perl -*-

use strict;
use warnings;
use Test::More;

use WWW::YQL;
use List::MoreUtils qw(any);

my $yql = WWW::YQL->new();
isa_ok($yql, 'WWW::YQL');

$yql->ua->env_proxy;

my $data;
eval{
    $data = $yql->query();
};
diag($@);
like ($@, qr/No query string specified for WWW::YQL->query/, "Correctly detected empty request");
done_testing();
exit(0);

