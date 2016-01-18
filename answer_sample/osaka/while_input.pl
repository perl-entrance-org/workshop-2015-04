#!/usr/bin/env perl

use strict;
use warnings;
use Data::Dumper;
use feature ':5.10';

# 練習問題 (1/3) #
# 標準入力から入力された文字列を, ひたすら$inputに代入するコード
## while_input.plという名前で保存する
while (chomp(my $input = <STDIN>)) {
  ## 練習問題 (2/3) ##
  # 文字列が0の場合, ループを抜ける(lastを使って...)
  if ($input =~ "0"){
    last;
  }
  ## 練習問題 (2/3) 文字列がperlないしPerlを含む場合, ｢Find Perl!｣と表示する.
  if ($input =~ /perl/){
    say("Find Perl!")
  }
  ### 文字列に大文字小文字問わず, pythonの文字列が含まれる場合, ｢Find Python!｣と表示する.
  if ($input =~ /python/i){
    say("Find Python!")
  }
  #### 文字列にperlないしrubyないしpythonが含まれる場合, ｢Love Programming!｣と表示する.
  if ($input =~ /perl|ruby|python/){
    say("Love Programing!")
  }

  ### 練習問題 (3/3) ###
  # 文字列の先頭にpapixがある場合, ｢Find papix!｣と表示する
  if ($input =~ /^papix/){
    say("Find papix!")
  }
  ## 文字列にHelloが含まれる場合, その後に続く単語xxxxを使って｢Hello! xxxx!｣と表示する.
  if ($input =~ /Hello(.+)/){
    say("Hello! $1!")
  }
}
