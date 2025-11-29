#!/bin/bash -xv
# SPDX=FileCopyright: 2025 yamakouAO 
# SPDX-License-Identifier: BSD-3-Clause

ng () {
	echo ${1}行目が違うよ
	res=1
}

res=0

### NORMAL INPUT ###
out=$(./matrix3*3 0 0 0 0 0 0 0 0 0)
test "${out}" = 0.0 || ng "$LINENO"

### NORMAL INPUT ###
out=$(./matrix3*3 1 0 0 1 0 0 0 0 0 )
test "${out}" = 0.0 || ng "$LINENO"

### NORMAL INPUT ###
out=$(./matrix3*3 1 0 0 0 1 0 0 0 1)
test "${out}" = 1.0 || ng "$LINENO"

### NORMAL INPUT ###
out=$(./matrix3*3 1 2 3 0 4 5 0 0 6)
test "${out}" = 24.0 || ng "$LINENO"

### NORMAL INPUT ###
out=$(./matrix3*3 1 2 3 4 5 6 7 8 9)
test "${out}" = 0.0 || ng "$LINENO"

### STRANGE INPUT ###
out=$(./matrix3*3 0 0 0 0 0 0 0 0 )
test "$?" = 1      || ng "$LINENO"
test "${out}" = "" || ng "$LINENO"

### STRANGE INPUT ###
out=$(./matrix3*3 あ 0 0 0 0 0 0 0 0)
test "$?" = 1      || ng "$LINENO"
test "${out}" = "" || ng "$LINENO"

test "${res}" = 0 && echo OK
exit $res
