#!/bin/sh

# This script attempts to remove any previously configured Puppet printers, while leaving any installed by the user intact. It attempts to remove any possible configuration of the PDX office printer names.

# Remove Baskerville
lpadmin -x "Baskerville"
lpadmin -x "baskerville"
lpadmin -x "PDX-5F-SW-Baskerville-CLR"
lpadmin -x "PDX-5F-N-Baskerville-CLR"
lpadmin -x "baskerville.corp.puppetlabs.net"
lpadmin -x "baskerville-1"
lpadmin -x "baskerville-2"


## Remove Cranky
lpadmin -x "Cranky"
lpadmin -x "cranky"
lpadmin -x "PDX-5F-N-Cranky-BW"
lpadmin -x "PDX-5F-SW-Cranky-BW"
lpdamin -x "cranky-1"
lpdamin -x "cranky-2"

## Remove Rowlf
lpadmin -x "Rowlf"
lpadmin -x "rowlf"
lpadmin -x "PDX-6F-NW-Rowlf-BW"
lpadmin -x "rowlf.corp.puppetlabs.net"
lpadmin -x "rowlf-1"
lpdamin -x "rowlf-2"

## Remove Elmo
lpadmin -x "Elmo"
lpadmin -x "elmo"
lpadmin -x "elmo.corp.puppetlabs.net"
lpadmin -x "elmo-1"

## Remove Statler
lpadmin -x "Statler"
lpadmin -x "statler"
lpadmin -x "statler.corp.puppetlabs.net"
lpadmin -x "statler-1"
lpadmin -x "statler-2"


exit 0

