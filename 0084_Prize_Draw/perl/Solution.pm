package Solution;

use 5.30.0;
use strict;
use warnings;
use Exporter qw(import);
our @EXPORT_OK = qw(rank);

sub rank {
    my ($fns, $w, $r) = @_;
    
    return "No participants" if not $fns;
    
    my @w = split ",", $w;
    
    # create a hash of letter values
    my $v = 0;
    my %av = map { $v++; $_ => $v } ('a' .. 'z');

    my %soms = ();
    for my $fn ( split ",", $fns ){
        my $som = length $fn;
        
        for ( split "", $fn ){
            $som += $av{lc $_};
        }

        $som *= shift( @w );
        $soms{$fn} = $som;
    }
    
    # bit of magic: sort the names (keys) based on their values
    # if the values are the same then compare alphabetically
    my @fns = sort { $soms{$b} <=> $soms{$a} or $a cmp $b } keys(%soms);

    my $ans = $fns[$r-1];
    $ans = "Not enough participants" if not $ans;
    
    return $ans;   
}