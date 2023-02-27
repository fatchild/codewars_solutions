package SolutionFusionChamber;

sub do_reaction {
    my ($m1, $m1_t, $m2, $m2_t) = @_;
    
    my $molecules = 0;
    
    while ($m1 >= $m1_t && $m2 >= $m2_t) {
        $m1 -= $m1_t;
        $m2 -= $m2_t;
        $molecules += 1;
    }
    
    return ($molecules, $m1, $m2);
}

sub burner {
    my ($c, $h, $o) = @_;
    
    my ($water, $h, $o) = do_reaction($h, 2, $o, 1);
    my ($co2, $c, $o) = do_reaction($c, 1, $o, 2);
    my ($methane, $c, $h) = do_reaction($c, 1, $h, 4);
    
    return [$water, $co2, $methane];
}

1;