package SolutionSumEvenSquareOddRoot;

sub sum_square_even_root_odd{
    my $nums = shift @_;
    
    my @nums = @$nums;
    my $sum = 0;
    
    for (@nums) {
        $sum += $_**2 if $_ % 2 == 0 && $_ != 0;
        $sum += sqrt $_ if $_ % 2 != 0 && $_ != 0;
    }
    
    $sum = sprintf("%.2f", $sum);
    $sum =~ s/0+$//;
    $sum =~ s/\.$//;
    return $sum;
};

1;
