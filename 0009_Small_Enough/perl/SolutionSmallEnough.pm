package SolutionSmallEnough;

sub small_enough {
    my ($limit, @array) = (pop, @_);
    
    for (@array) { return 0 if $_ > $limit; }
    
    return 1;
}1;