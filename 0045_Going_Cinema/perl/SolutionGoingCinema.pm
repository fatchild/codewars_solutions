package SolutionGoingCinema;

use 5.30.0;
use strict;
use warnings;
use Exporter qw(import);
our @EXPORT_OK = qw(movie);
use POSIX;

sub movie {
    my ($card, $ticket, $percent) = @_;
    
    my $total_system_a = $ticket;
    my $total_system_b = $card + ($ticket * $percent);
    my $total_showings = 1;
    
    # Keep iterating until system a is more costly than system b
    while ($total_system_a <= ceil($total_system_b)) {
        $total_showings += 1;
        $total_system_a += $ticket;
        $total_system_b += $ticket * ($percent**$total_showings);
    }
    
    return $total_showings;
    
}