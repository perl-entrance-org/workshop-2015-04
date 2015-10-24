# サブルーチンと<br>リファレンス

## 配列を引数に
    my @hoge = qw/ hoge fuga /;
    my @foo  = qw/ foo bar baz /;
    sub output {
        my (@array1, @array2) = @_;
        print '@array1 = ' . join(',', @array1) . "\n";  
        print '@array2 = ' . join(',', @array2) . "\n";  
    }
    output(@hoge, @foo);

- サブルーチンの引数として, 2つの配列を与えてみましょう.
    - この時, 実行結果はどうなると思いますか? 考えてみましょう.

## 配列を引数に

    @array1 = hoge,fuga,foo,bar,baz
    @array2 =

- 実行結果はこのようになります!

## 配列を引数に

    @array1 = hoge,fuga
    @array2 = foo,bar,baz

- このようになる, と予測した方は多いのではないでしょうか?

## なぜ!?

    my @array1 = qw/ hoge fuga /;
    my @array2 = qw/ foo bar baz /;
    my @array  = (@array1, @array2);
    # @array = ('hoge', 'fuga', 'foo', 'bar', 'baz');

- これは, 複数の配列をリストで評価すると, 展開されて元の配列の区別がなくなってしまう為です.
- 先程の場合, `@_`の中身は`('hoge', 'fuga', 'foo', 'bar', 'baz')になります.
    - Perlは元の配列の`@hoge`と`@foo`の境目が`@_`のどこにあるかわからないので, 全て`@array1`に突っ込もうとします.

## そこで!

- この問題を解決する為に, リファレンスを利用することができます!

## リファレンス渡し

    my @hoge = qw/ hoge fuga /;
    my @foo  = qw/ foo bar baz /;
    sub output {
        my ($array1, $array2) = @_;
        print '@$array1 = ' . join(',', @$array1) . "\n";  
        print '@$array2 = ' . join(',', @$array2) . "\n";  
    }
    output(\@hoge, \@foo);

- 8行目で配列のリファレンスを渡しているので, 4行目では2つのスカラ変数で引数を受け取っています.

## リファレンス渡し

    @$array1 = hoge,fuga
    @$array2 = foo,bar,baz

- 実行してみると, 期待通りの結果を取得することができました.

## リファレンス渡し

- 配列と同様に, ハッシュもリファレンスで渡すことができます.
- 更に, リファレンスで渡す場合, 配列をそのまま渡した時のように, データのコピーが発生しません.
- 引数として与えた配列･ハッシュの構造をそのままサブルーチンに渡すことができ, データのコピーが発生しない｢リファレンス渡し｣ですが, 1つ注意点があります.

## 中身の書き換え

    my %hash = ( papix => 'dame' );
    print $hash{papix}; # => dame
    fix(\%hash);
    print $hash{papix}; # => perfect
    sub fix {
        my $hash = shift;
        $hash->{papix} = 'perfect';
    }

- サブルーチンに渡される配列･ハッシュのリファレンスは, サブルーチンの外側にある配列･ハッシュの実体(この場合, `%hash`)を指しているので, サブルーチンの中でデータ構造を書き換えると, 外側の実体にも影響が出てしまいます.

## 練習問題
- 配列とハッシュをそれぞれ1つずつ定義してから, 第1引数に配列のリファレンス, 第2引数にハッシュのリファレンスを受け取り, その中身を出力する(for文などを利用して...), `output_array_and_hash`というサブルーチンを書いてみよう.
- このコードは, `output_array_and_hash.pl`という名前で保存するようにしましょう.
