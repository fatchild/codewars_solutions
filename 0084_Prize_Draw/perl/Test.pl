use strict;
use warnings;
use Test::More;
use Solution qw(rank);

sub testing {
    my ($s, $w, $n, $exp) = @_;
    my $ans = rank($s, $w, $n);
    is($ans, $exp, "");
}

subtest "basics" => sub {
    testing("Addison,Jayden,Sofia,Michael,Andrew,Lily,Benjamin", "4,2,1,4,3,1,2", 4, "Benjamin");
    testing("Elijah,Chloe,Elizabeth,Matthew,Natalie,Jayden", "1,3,5,5,3,6", 2, "Matthew");
    testing("Addison,Jayden,Sofia,Michael,Andrew,Lily,Benjamin", "4,2,1,4,3,1,2", 8, "Not enough participants");
    testing("", "4,2,1,4,3,1,2", 6, "No participants");
    
};

done_testing();

