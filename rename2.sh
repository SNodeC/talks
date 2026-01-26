#!/bin/bash
#

FILES=`ls -1 *.png | sort -g`

newNum=0

while IFS='.' read -ra SLIDE <&4 ; do
  SNAME="${SLIDE[0]}"
  SEXT="${SLIDE[1]}"
  newNum=$((newNum+100))
  echo "Moving: ${SNAME}.${SEXT} -> ${newNum}_${1}.${SEXT}-tmp"
  mv "${SNAME}.${SEXT}" "${newNum}_${1}.${SEXT}-tmp"
done 4<<< "$FILES"

FILES=`ls -1 *-tmp | sort -g`

while IFS='-' read -ra SLIDE <&4; do
  SFULL="${SLIDE[0]}"
  STMP="${SLIDE[1]}"
  echo "Moving: ${SFULL}-${STMP} -> ${SFULL}"
  mv "${SFULL}-${STMP}" "${SFULL}"
done 4<<< "$FILES"
