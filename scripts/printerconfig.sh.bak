#!/bin/sh

## This script will install and configure the printers in the Puppet Labs Portland office. It is meant to be used as a post-flight script for the printer installation package, but can be used as a standalone script if the printer drivers are already configured.

## Variables

# PPD Paths
twoeightthree_ppd='/Library/Printers/PPDs/Contents/Resources/KONICAMINOLTA283.gz'
echo $twoeightthree_ppd
threesixfour_ppd='/Library/Printers/PPDs/Contents/Resources/KONICAMINOLTA364e.gz'
echo $threesixfour_ppd

# IP Addresses
baskerville_addr="lpd://baskerville.corp.puppetlabs.net"
cranky_addr="lpd://cranky.corp.puppetlabs.net"
rowlf_addr="lpd://rowlf.corp.puppetlabs.net"

# Names
baskerville_name="Baskerville"
cranky_name="Cranky"
rowlf_name="Rowlf"

# Descriptions
baskerville_desc="PDX-5F-SW-Baskerville-CLR"
cranky_desc="PDX-5F-N-Cranky-BW"
rowlf_desc="PDX-6F-NW-Rowlf-BW"

# Locations
baskerville_loc="5th floor, NW corner in Support area" 
cranky_loc="5th Floor, N in Sales area"
rowlf_loc="6th floor, NW corner in Engineering area"

## Functions

# Check if Baskerville's driver is present and install the printer if so.
if [ -e $threesixfour_ppd ];
then
echo "Adding printer $baskerville_name in location $baskerville_loc using IP address $baskerville_addr and PPD $threesixfour_ppd"
lpadmin -p "$baskerville_name" -v "$baskerville_addr" -D "$baskerville_desc" -L "$baskerville_loc" -P "$threesixfour_ppd" -E
echo "Baskerville added successfully."
else
echo "The printer driver for $baskerville_name has not yet been installed. Please run the installer prior to running this script."
fi

# Check if Cranky's driver is present and install the printer if so.
if [ -e $twoeightthree_ppd ];
then
echo "Adding printer $cranky_name in location $cranky_loc using IP address $cranky_addr and PPD $twoeightthree_ppd"
lpadmin -p "$cranky_name" -v "$cranky_addr" -D "$cranky_desc" -L "$cranky_loc" -P "$twoeightthree_ppd" -E
echo "Cranky added successfully."
else
echo "The printer driver for $cranky_name has not yet been installed. Please run the installer prior to running this script."
fi

# Check if Rowlf's driver is present and install the printer if so.
if [ -e $twoeightthree_ppd ];
then
echo "Adding printer $rowlf_name in location $rowlf_loc using IP address $rowlf_addr and PPD $twoeightthree_ppd"
lpadmin -p "$rowlf_name" -v "$rowlf_addr" -D "$rowlf_desc" -L "$rowlf_loc" -P "$twoeightthree_ppd" -E
echo "Rowlf added successfully."
else
echo "The printer driver for $rowlf_name has not yet been installed. Please run the installer prior to running this script."
fi

## Report back which printers are installed
lpstat -p

exit 0