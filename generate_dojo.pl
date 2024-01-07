#! /usr/bin/perl

use strict;
use warnings;

my $dir = "./";
opendir(BIN, $dir) or die "Can't open $dir: $!";

=pod

---
layout: layouts/dojos.njk
title: "Rotate for Max"
level: "7"
language: perl
link: https://www.codewars.com/kata/56a4872cbb65f3a610000026
date: 2023-02-05T00:00:00.000Z
site: codewars
---


=cut


my @array = ();

# modification to code you already have....
while( my $file=readdir BIN ){
    print "PROCESSING: $file\n";

    my @title = $file =~ m/\d{4}_(\w+)$/;
    print $title[0], "\n" if defined $title[0];

    if ( defined $title[0] )
    {
        my $title = join( " ", split( "_", $title[0] ));
        print $title, "\n";
    }
}