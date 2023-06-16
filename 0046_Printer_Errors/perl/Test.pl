use strict;
use warnings;
use Test::More;
use SolutionPrinterError qw(printer_error);

sub dotest {
    my ($s, $exp) = @_;
    my $ans = printer_error($s);
    is($ans, $exp, "");
}

subtest "basics" => sub {
    dotest('aaabbbbhaijjjm', '0/14');
    dotest('aaabbbbhaijjjmuvwx', '4/18');
    dotest('aaaxbbbbyyhwawiwjjjwwm', '8/22');
    dotest('uvwx', '4/4');
    
};

done_testing();