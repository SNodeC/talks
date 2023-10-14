#!/bin/bash
#

FILES=`ls -1 slides`

while IFS='_' read -ra SLIDE <&4 ; do
  SNUMBER="${SLIDE[0]}"
  SNAME="${SLIDE[1]}"
  ktikz "slides/${SNUMBER}_${SNAME}" > /dev/null 2> /dev/null &
  read -p "[Name for ${SNUMBER}_slide.tex] " SNNAME
  echo "   ... rename ${SNUMBER}_slide.tex to ${SNUMBER}_${SNNAME}.tex"
  mv "slides/${SNUMBER}_slide.tex" "${SNUMBER}_${SNNAME}.tex"
  killall ktikz
done 4<<< "$FILES"
