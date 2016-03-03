#!/bin/sh

## This script will install and configure the printers in the Puppet Labs Portland office. It is meant to be used as a post-flight script for the printer installation package, but can be used as a standalone script if the printer drivers are already configured.


## Printers
### PDX-5F-N-Rufus-CLR (Konica Minolta C368PS)
### PDX-6F-NE-Watson-BW (Konica Minolta 284e PS)
### PDX-5F-SW-Cranky-BW (Konica Minolta 283 PS)

## Variables

# PPD Paths
cranky_ppd='/Library/Printers/PPDs/Contents/Resources/KONICAMINOLTA283.gz'
echo $cranky_ppd
watson_ppd='/Library/Printers/PPDs/Contents/Resources/KONICAMINOLTA284e.gz'
echo $watson_ppd
rufus_ppd='/Library/Printers/PPDs/Contents/Resources/KONICAMINOLTAC368.gz'
echo $rufus_ppd

# IP Addresses
rufus_addr="lpd://rufus.corp.puppetlabs.net"
cranky_addr="lpd://cranky.corp.puppetlabs.net"
watson_addr="lpd://watson.corp.puppetlabs.net"

# Names
rufus_name="PDX-5F-N-Rufus-CLR"
cranky_name="PDX-5F-SW-Cranky-BW"
watson_name="PDX-6F-NE-Watson-BW"

# Descriptions
rufus_desc="PDX-5F-N-Rufus-CLR"
cranky_desc="PDX-5F-SW-Cranky-BW"
watson_desc="PDX-6F-NE-Watson-BW"

# Locations

rufus_loc="5th floor, N area near Sales" 
cranky_loc="5th floor, SW corner near Support"
watson_loc="6th floor, NE corner in Engineering"

## Functions

# Check if Rufus's driver is present and install the printer if so.
if [ -e $rufus_ppd ];
then
echo "Adding printer $rufus_name in location $rufus_loc using IP address $rufus_addr and PPD $rufus_ppd"
lpadmin -p "$rufus_name" -v "$rufus_addr" -D "$rufus_desc" -L "$rufus_loc" -P "$rufus_ppd" -E -o printer-is-shared=false
echo "Rufus added successfully."
else
echo "The printer driver for $rufus_name has not yet been installed. Please run the installer prior to running this script."
fi

# Check if Cranky's driver is present and install the printer if so.
if [ -e $cranky_ppd ];
then
echo "Adding printer $cranky_name in location $cranky_loc using IP address $cranky_addr and PPD $cranky_ppd"
lpadmin -p "$cranky_name" -v "$cranky_addr" -D "$cranky_desc" -L "$cranky_loc" -P "$cranky_ppd" -E -o printer-is-shared=false
echo "Cranky added successfully."
else
echo "The printer driver for $cranky_name has not yet been installed. Please run the installer prior to running this script."
fi

# Check if Watson's driver is present and install the printer if so.
if [ -e $watson_ppd ];
then
echo "Adding printer $watson_name in location $watson_loc using IP address $watson_addr and PPD $watson_ppd"
lpadmin -p "$watson_name" -v "$watson_addr" -D "$watson_desc" -L "$watson_loc" -P "$watson_ppd" -E -o printer-is-shared=false
echo "Watson added successfully."
else
echo "The printer driver for $watson_name has not yet been installed. Please run the installer prior to running this script."
fi

## Report back which printers are installed
lpstat -p

exit 0