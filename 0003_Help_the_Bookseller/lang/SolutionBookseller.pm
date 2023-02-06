package SolutionBookseller;

use 5.30.0;
use strict;
use warnings;
use Exporter qw(import);
our @EXPORT_OK = qw(stock_list);

# input: one array_ref; ouput: hash of quantities
sub stock_quantity {
    my $lst_of_art = shift @_;
    
    my %hash_of_each;
    
    for my $item (@$lst_of_art){
        my @item_info = $item =~ m/(^\w{1})\w+\s(\d+)/;
        
        if (defined $item_info[0]) {
            $hash_of_each{$item_info[0]} += $item_info[1];
        } else {
            $hash_of_each{$item_info[0]} = $item_info[1];   
        }
    }
    
    return \%hash_of_each;
}

# input: one array_ref and one hash; ouput: formatted quantities
sub check_stock {
    my ($lst_of_1st_letter, $stock_of_each) = @_;
    my %stock_of_each = %$stock_of_each;
    
    my @quantity_of_each;

    # Loop through the incoming list of 1st letters and format the output
    for my $letter (@$lst_of_1st_letter) {
        if (defined $stock_of_each{$letter}) {
            push @quantity_of_each, "(".join(" : ", $letter, $stock_of_each{$letter}).")";
        } else {
            push @quantity_of_each, "($letter : 0)";
        }
    }
    
    return join(" - ", @quantity_of_each)
}

# input: two array_ref; ouput: string
sub stock_list {
    my ($lst_of_art, $lst_of_1st_letter) = @_;
    
    # If any of the arrays are empty then return an empty string
    return "" if scalar @$lst_of_art == 0 || scalar @$lst_of_1st_letter == 0;
    
    my $stock_of_each = stock_quantity($lst_of_art);
    my $quantity_of_requested = check_stock($lst_of_1st_letter, $stock_of_each);

    return $quantity_of_requested;
}