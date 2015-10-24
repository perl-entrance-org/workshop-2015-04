#!/usr/bin/env perl
use utf8;
use strict;
use warnings;

use Path::Tiny;

my $src_dir = './src';
my $dst_dir = '.';
my @slides  = qw/
  intro.md
  review.md
  sub.md
  sub_and_reference.md
  regexp.md
  regexp_and_replace.md
  regexp_and_meta.md
  regexp_and_options.md
  qanda.md
  outro.md
  /;
my $slide
  = "<!-- このファイルは直接編集せずに src ディレクトリ内のファイルを編集し build.pl を実行してください。 -->\n";
$slide .= join(
    "\n---\n",
    map {
        my $str = path("$src_dir/$_")->slurp_utf8;
        $str =~ s/\n(##? )/\n___\n$1/g;
        $str
    } @slides
);
path("$dst_dir/slide.md")->spew_utf8($slide);
