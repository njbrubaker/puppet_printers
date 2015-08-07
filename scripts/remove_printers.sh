#!/bin/sh

## Remove Baskerville
lpadmin -x "Baskerville"
lpadmin -x "PDX-5F-SW-Baskerville-CLR"
lpadmin -x "PDX-5F-N-Baskerville-CLR"

## Remove Cranky
lpadmin -x "Cranky"
lpadmin -x "PDX-5F-N-Cranky-BW"
lpadmin -x "PDX-5F-SW-Cranky-BW"

## Remove Rowlf
lpadmin -x "Rowlf"
lpadmin -x "PDX-6F-NW-Rowlf-BW"

## Remove Elmo
lpadmin -x "Elmo"

exit 0

