#!/usr/bin/env perl

use strict;
use warnings;
use Data::Dumper;
use feature ':5.10';

# 文字列でパターンマッチ
my $str = 'I love ruby';
$str =~ s/ruby/perl/;

# 変数を利用した場合のパターンマッチ
my $str2 = 'I love ruby';
my $pattern = 'ruby';
my $replace = 'perl';

$str2 =~ s/$pattern/$replace/;

say $str;
say $str2;
