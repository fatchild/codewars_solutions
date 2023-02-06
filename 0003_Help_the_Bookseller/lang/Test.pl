use strict;
use warnings;
use Test::More;
use SolutionBookseller qw(stock_list);

sub testing {
    my ($lst_of_art, $lst_of_1st_letter, $exp) = @_;
    my $ans = stock_list($lst_of_art, $lst_of_1st_letter);
    my $sa1 = join ", ", @$lst_of_art;
    my $sa2 = join ", ", @$lst_of_1st_letter;
    is($ans, $exp, "stock_list([$sa1], [$sa2])");
}

subtest "basics" => sub {
    my $b = ['BBAR 150', 'CDXE 515', 'BKWR 250', 'BTSQ 890', 'DRTY 600'];
    my $c = ['A', 'B', 'C', 'D'];
    testing($b, $c, '(A : 0) - (B : 1290) - (C : 515) - (D : 600)');
    $b = ['ABAR 200', 'CDXE 500', 'BKWR 250', 'BTSQ 890', 'DRTY 600'];
    $c = ['A', 'B'];
    testing($b, $c, '(A : 200) - (B : 1140)');
    $b = ['CBART 20', 'CDXEF 50', 'BKWRK 25', 'BTSQZ 89', 'DRTYM 60'];
    $c = ['A', 'B', 'C', 'W'];
    testing($b, $c, '(A : 0) - (B : 114) - (C : 70) - (W : 0)');
    $b = [];
    $c = ['B', 'R', 'D', 'X'];
    testing($b, $c, '');
    
};

done_testing();