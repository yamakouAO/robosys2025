# robosys2025
学習用

## matrixコマンド
標準入力から行列に変換し数値化するコマンド

## インストール方法

- ダウンロード方法
```
$ git clone https//github.com/yamakouAO/robosys2025.git
```
- コマンドのある場所への行き方
```
$ cd robosys2025
```
- 実行方法
実行の許可を与える(２回目以降不要)
```
$ chmod +x matrix_2x2

$ chmod +x matrix_3x3
```

## テスト環境
- ubuntu-latest

## matrix_2x2コマンド
![test](https://github.com/yamakouAO/robosys2025/actions/workflows/test_matrix_2x2.yml/badge.svg)

### 概要
標準入力から2×2の行列を計算し出力するコマンド

### 必要なソフトウェア
- Python
  - テスト済みバージョン: 3.7 ~ 3.13

### 使用例

$$
\begin{bmatrix}
1 & 2 \\
3 & 4 
\end{bmatrix}
$$

の数値化

```
$ echo 1 2 3 4 |./matrix_3x3
-2.0
```
### 使用方法
このプログラムは、標準入力から ４つの値を読み込み、行列式を計算して出力します。

$$
\begin{bmatrix}
a & b \\
c & d
\end{bmatrix}
$$

の場合

```
$ echo a b c d | ./matrix_2x2
```
と入力します
(説明のため数字以外を入力していますが数字以外には対応していません)

## matrix_3x3コマンド                                                 
![test](https://github.com/yamakouAO/robosys2025/actions/workflows/test_matrix_3x3.yml/badge.svg)

### 概要
3×3の行列を計算し出力するコマンド

### 必要なソフトウェア
- Python
  - テスト済みバージョン: 3.7 ~ 3.13

### テスト環境
- ubuntu-latest

### 使用例

$$
\begin{bmatrix}
1 & 2 & 3 \\
4 & 5 & 6 \\
7 & 8 & 9 
\end{bmatrix}
$$

の数値化

```
$ echo 1 2 3 4 5 6 7 8 9 |./matrix_3x3
0.0
```
### 使用方法
このプログラムは、標準入力から ９つの値を読み込み、行列式を計算して出力します。
(基本はmatrix_2x2 と同様です)

$$                                                                    \begin{bmatrix}
a & b & c \\
d & e & f \\
g & h & i
\end{bmatrix}
$$

の場合

```
$ echo a b c d e f g h i |./matrix_3x3
```
と入力します(説明のため数字以外を入力していますが数字以外には対応していません)


このソフトウェアパッケージは，3条項BSDライセンスの下，再頒布および使用が許可されます．
- このパッケージは，[Ryuichi uedaの講義スライド](https://github.com/ryuichiueda/slides_marp/tree/master/robosys2025) 由来のコード（© 2025 Ryuichi Ueda）を利用しています．
- このパッケージのコードは，下記のスライド（CC-BY-SA 4.0 by Ryuichi Ueda）のものを，本人の許可を得て自身の著作としたものです．
	- [ryuichiueda/my_slides robosys_2025](https://github.com/ryuichiueda/slides_marp/tree/master/robosys2025)
- © 2025 yamakouAO
