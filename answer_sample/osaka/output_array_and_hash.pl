#!/usr/bin/env perl

use strict;
use warnings;
use Data::Dumper;
use feature ':5.10';

my @array = qw/aa bb cc/;
my %hash = (hash_key => 'hash_val');

my $hash_ref = { hash_key => 'hash_val'};

sub output_array_and_hash{
  my ($array,$hash) = @_;
  for my $key (@$array){
     say $key;
  }
  for my $key (keys %$hash){
     say $key;
     say $hash->{$key};
  }
}

output_array_and_hash(\@array,\%hash);
