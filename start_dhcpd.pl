#!/perl/bin
# -----------------------------------------------------------------------------
# EICNDHCPD v1.0 for NT4 
# EICNDHCPD Copyright (c)1998 EICN & Nils Reichen <reichen@eicn.ch> 
# All rights reserved.
# http://neli00.eicn.etna.ch/~reichen/eicndhcpd.htm
# START_DHCPD.PL part
# -----------------------------------------------------------------------------
# EICNDHCPD is a static DHCP server for NT4.
# "static" because each computer is identified by his MAC address
# (ethernet addr.) and obtains the same configuration (IP addr., ...) all time.
# All the host configuration is centralized in a text file (netdata.dat).
#
# Made by Nils Reichen <reichen@eicn.ch>
# EICN, NEUCHATEL SCHOOL OF ENGINEERING
# Le Locle, Switzerland
#
# under Perl 5.004_02 for WinNT4.0
# (c)1998 Copyright EICN & Nils Reichen <reichen@eicn.ch>
# 
# Use under GNU General Public License
# Details can be found at:http://www.gnu.org/copyleft/gpl.html
#
#$Header: start_dhcpd.pl,v 1.0 1998/6/18
# -----------------------------------------------------------------------------
# v0.9b Created: 19.May.1998   - Created by Nils Reichen <reichen@eicn.ch>
# v0.901b Revised: 26.May.1998 - Renew bug solved, and optimized code
# v0.902b Revised: 04.Jun.1998 - EventLog and Service NT
# v0.903b Revised: 18.Jun.1998 - Fix some little bugs (inet_aton,...)
$ver      = "v1.0";
$ver_date = "18.Jun.1998";
# -----------------------------------------------------------------------------

use Win32::Service;  # Win32::Service module: to start/stop/status of services

###############################################################################
#
# Start EICNDHCPD service
#
print "\n\n\nStarting EICNDHCPD service...\n\n";
 Win32::Service::StartService('',"EICNDHCPD") || die "Cannot start EICNDHCPD service: $!";

 
