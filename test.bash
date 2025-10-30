#!/bin/bash

a=山口

ng () {
	echo ${1}行目が違うよ
	res=1
}

test "$a" = 山田 || ng "$LINENO"
test "$a" = 山口 || ng "$LINENO"

exit $res
