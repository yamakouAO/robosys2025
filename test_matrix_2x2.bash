#!/bin/bash -xv
# SPDX=FileCopyright: 2025 yamakouAO 
# SPDX-License-Identifier: BSD-3-Clause

ng () {
	echo ${1}行目が違うよ
	res=1
}

res=0

### NORMAL INPUT ###
out=$(echo 0 0 0 0 | ./matrix_2x2)
test "${out}" = 0.0 || ng "$LINENO"

### NORMAL INPUT ###
out=$(echo 1 0 0 1 | ./matrix_2x2)
test "${out}" = 1.0 || ng "$LINENO"

### NORMAL INPUT ###
out=$(seq 4 | ./matrix_2x2)
test "${out}" = -2.0 || ng "$LINENO"

### STRANGE INPUT ###
out=$(seq 3 | ./matrix_2x2)
test "$?" = 1      || ng "$LINENO"
test "${out}" = "" || ng "$LINENO"

### STRANGE INPUT ###
out=$(seq 5 | ./matrix_2x2)
test "$?" = 1      || ng "$LINENO"
test "${out}" = "" || ng "$LINENO"

### STRANGE INPUT ###
out=$(seq a 0 0 0 | ./matrix_2x2)
test "$?" = 1      || ng "$LINENO"
test "${out}" = "" || ng "$LINENO"

test "${res}" = 0 && echo OK
exit $res
