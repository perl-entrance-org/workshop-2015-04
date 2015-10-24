# 正規表現のオプション

## 繰り返してマッチ(g)
	my $str = 'Hello, hoge! Hello, fuga!';
	my @name = ($str =~ /Hello, (\w+?)!/g);
	# @name = ('hoge', 'fuga'); となる.

- `g`は, 正規表現のマッチングを繰り返し行います.
- また, 正規表現に`()`が含まれる場合, マッチした文字列のうち`()`の中に含まれる文字列をリストとして返します.

## 繰り返してマッチ(g)
	my $str = 'Hello, hoge! Hello, fuga!';
	my $str =~ s/Hello/Good morning/g;

- 置換の部分で説明したように, `s///g`とすると, 置換の処理を繰り返し行なってくれます.

## 大文字/小文字を区別しない(i)
	my $str = 'John and Beth';
    if ($str =~ /john/i) {
        print "match!\n";
    }

- `i`は, 正規表現中のアルファベットの大文字･小文字を区別せずにマッチングを行います.
- よって, `/john/i`は, `john`はもちろん, `John`や`JOHN`, `jOhN`などにもマッチします.

# 練習問題 (1/3)

    while (chomp(my $input = <STDIN>)) {
        ...
    }

- 上記のコードは, 標準入力から入力された文字列を, ひたすら`$input`に代入するコードである.
- このコードの`...`の部分を, 次の条件を満たすように書き換えてみよう.
- この問題のコードは, `while_input.pl`という名前で保存するようにしよう.

# 練習問題 (2/3)
- 文字列が`0`の場合, ループを抜ける(`last`を使って...).
- 文字列が`perl`ないし`Perl`を含む場合, ｢Find Perl!｣と表示する.
- 文字列に大文字小文字問わず, `python`の文字列が含まれる場合, ｢Find Python!｣と表示する.
- 文字列に`perl`ないし`ruby`ないし`python`が含まれる場合, ｢Love Programming!｣と表示する. 

# 練習問題 (3/3)
- 文字列の先頭に`papix`がある場合, ｢Find papix!｣と表示する.
- 文字列に`Hello`が含まれる場合, その後に続く単語`xxxx`を使って｢Hello! xxxx!｣と表示する.
    - 例えば, 文字列に｢Hello papix｣が含まれる場合, ｢Hello! papix!｣と表示すればOKです.
