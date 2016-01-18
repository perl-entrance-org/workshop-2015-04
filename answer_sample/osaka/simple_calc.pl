#!/usr/bin/env perl

use strict;
use warnings;
use Data::Dumper;
use feature ':5.10';

sub add{
  my($left,$right) = @_;
  return $left + $right;
}

sub min{
  my($left,$right) = @_;
  return $left - $right;
}

sub mul{
  my($left,$right) = @_;
  return $left * $right;
}

sub div{
  my($left,$right) = @_;
  return $left / $right;
}


##use feature ':5.10';を追記することでsayコマンド利用可能
## sayコマンドはprintして改行をつけてくれる
say add(1,2);
say min(5,2);
say mul(4,2);
say div(4,2);
