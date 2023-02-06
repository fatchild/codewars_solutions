package SolutionAthletics;

use 5.30.0;
use strict;
use warnings;
use Exporter qw(import);
our @EXPORT_OK = qw(stats);
use POSIX;

sub _get_range {
    my @input_array = @_;
    
    my ( $min, $max );
    
    for (@input_array) {
        $min = $_ if !$min || $_ < $min;
        $max = $_ if !$max || $_ > $max
    };
    
    return $max - $min;
}

sub _get_mean {
    my @input_array = @_;
    
    my $mean;
    
    for (@input_array){
        $mean += $_;
    }
    
    return $mean / scalar @input_array;
}

sub _get_median {
    my @input_array = sort { $a <=> $b } @_;
    
    if ( scalar @input_array % 2 == 0 ){
        return _get_mean($input_array[ceil(scalar @input_array / 2)-1], $input_array[ceil(scalar @input_array / 2)]);
    } else {
        return $input_array[ceil(scalar @input_array / 2)-1];
    }
}

sub _format_time {
    my $time_in = shift @_;
    
    my $hours = floor($time_in/(60*60));
    $time_in -= ($hours*(60*60));
    $hours = sprintf("%02d",$hours);
    
    my $minutes = floor($time_in/(60));
    $time_in -= ($minutes*(60));
    $minutes = sprintf("%02d",$minutes);
    
    my $seconds = $time_in;
    $seconds = sprintf("%02d",$seconds);
    
    return join("|", $hours, $minutes, $seconds);
}

sub stats {
    my $s = shift @_;
    
    return "" if $s eq "";
    
    my $results_output;
    my @results;
    
    map {
        my ($h, $m, $s) = split(/\|/, $_);
        
        push(@results, ($h*60*60)+($m*60)+($s))  
    } split(", ", $s);

    # calc the range
    $results_output .= "Range: "._format_time(_get_range(@results))." ";
    
    # calc the mean 
    $results_output .= "Average: "._format_time(_get_mean(@results))." ";
    
    # calc the median 
    $results_output .= "Median: "._format_time(_get_median(@results));
    
    return $results_output;
}
