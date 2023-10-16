#!/bin/bash
#

FILES=`ls -1 *.tex | sort`

newNum=0

while IFS='_' read -ra SLIDE <&4 ; do
  SNUMBER="${SLIDE[0]}"
  SNAME="${SLIDE[1]}"
  newNum=$((newNum+100))
  num=$(printf "%05d" ${newNum})
  echo "Moving: ${SNUMBER}_${SNAME} -> ${num}_${SNAME}"
  mv "${SNUMBER}_${SNAME}" "${num}_${SNAME}"
done 4<<< "$FILES"

