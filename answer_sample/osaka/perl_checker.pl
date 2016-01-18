#!/usr/bin/env perl

use strict;
use warnings;
use Data::Dumper;
use feature ':5.10';

sub perl_checker{
  my $str = shift;
  if ($str =~ /perl/) {
    return "Perl Monger!";
  }else{
    return "mongerではありません";
  }
}

# perl_checker('');
say perl_checker('perl');
say perl_checker('ruby');
