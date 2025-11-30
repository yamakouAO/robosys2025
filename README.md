# robosys2025
学習用

## インストール方法

```
$ git clone https//github.com/yamakouAO/robosys2025.git

$ cd robosys2025
```

## plusコマンド
![test](https://github.com/yamakouAO/robosys2025/actions/workflows/test.yml/badge.svg)

### 概要
入力された縦の数値を全部足して、その合計を出力するコマンド

### 必要なソフトウェア
- Python
  - テスト済みバージョン: 3.7 ~ 3.13

### テスト環境
- ubuntu-latest

### 使用例

```
$ seq 5 | ./plus
15
```

## matrix2*2コマンド
![test](https://github.com/yamakouAO/robosys2025/actions/workflows/test_matrix2*2.yml/badge.svg)

### 概要
2×2の行列を計算し出力するコマンド

### 必要なソフトウェア
- Python
  - テスト済みバージョン: 3.7 ~ 3.13

### テスト環境
- ubuntu-latest

### 使用例

$$
\begin{bmatrix}
1 & 2 \\
3 & 4 
\end{bmatrix}
$$

の数値化

```
$ ./matrix2*2 1 2 3 4
-2.0
```

このソフトウェアパッケージは，3条項BSDライセンスの下，再頒布および使用が許可されます．
- このパッケージは，[Ryuichi ueda](https://github.com/ryuichiueda/slides_marp/tree/master/robosys2025) 由来のコード（© 2025 Ryuichi Ueda）を利用しています．
- このパッケージのコードは，下記のスライド（CC-BY-SA 4.0 by Ryuichi Ueda）のものを，本人の許可を得て自身の著作としたものです．
	- [ryuichiueda/my_slides robosys_2025](https://github.com/ryuichiueda/slides_marp/tree/master/robosys2025)
- © 2025 yamakouAO
