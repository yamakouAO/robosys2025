#!/bin/bash -xv
# SPDX=FileCopyright: 2025 yamakouAO 
# SPDX-License-Identifier: BSD-3-Clause

ng () {
	echo ${1}行目が違うよ
	res=1
}

res=0

### NORMAL INPUT ###
out=$(./matrix2*2 0 0 0 0)
test "${out}" = 0.0 || ng "$LINENO"

### NORMAL INPUT ###
out=$(./matrix2*2 1 0 0 1)
test "${out}" = 1.0 || ng "$LINENO"

### NORMAL INPUT ###
out=$(./matrix2*2 1 2 3 4)
test "${out}" = -2.0 || ng "$LINENO"

### STRANGE INPUT ###
out=$(./matrix2*2 0 0 0)
test "$?" = 1      || ng "$LINENO"
test "${out}" = "" || ng "$LINENO"

### STRANGE INPUT ###
out=$(./matrix2*2 あ0 0 0)
test "$?" = 1      || ng "$LINENO"
test "${out}" = "" || ng "$LINENO"

test "${res}" = 0 && echo OK
exit $res
