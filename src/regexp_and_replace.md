# 正規表現と置換

## 置換
	my $str = 'abc def ghi';
	$str =~ s/abc/ABC/;
	# $str = 'ABC def ghi';

- `s/PATTERN/REPLACE/`で, `PATTERN`を`REPLACE`に置換します.
    - `PATTERN`を記述する為に, 正規表現を利用することができます.
- `$str`に含まれる全ての`PATTERN`を置換したい場合, `s/PATTERN/REPLACE/g`と表記します.
    - 最後にオプションとして`g`を付けることで, 繰り返し評価･置換します.

## 変数の使用

	my $str = 'perl ruby python';
	my $pattern = 'perl';
	if($str =~ /$pattern/) {
		print "'$str'には'$pattern'が含まれます.\n";
	}

- このように, 正規表現として変数を利用することもできます.

## 練習問題
    my $str = 'I love ruby';

- この`$str`に格納された文字列を, 置換を利用して, ｢I love perl｣に書き換えるようなコードを書いてみましょう.
    - コードは, `regexp_replace.pl`という名前で保存しましょう.
