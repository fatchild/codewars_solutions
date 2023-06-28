package SolutionMaxMultiple;

sub max_multiple {
    my ($d, $b) = @_;
    
    my $n = $b;
    
    while(1)
    {
        $n > 0 && N <= $b && $n % $d == 0 ? return $n : $n--;
    }
}

1;