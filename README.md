# Overview

**Reaver** implements a **brute force attack** against **Wifi Protected Setup** (WPS) registrar **PINs** in order to recover **WPA/WPA2 passphrases**, as described in [Brute forcing Wi-Fi Protected Setup When poor design meets poor implementation.](http://sviehb.files.wordpress.com/2011/12/viehboeck_wps.pdf) by **Stefan Viehböck**.  
**Reaver** has been designed to be a robust and practical attack against **Wi-Fi Protected Setup (WPS)** registrar PINs in order to **recover WPA/WPA2 passphrases** and has been tested against a wide variety of access points and WPS implementations.  
**Depending on the target's Access Point (AP)**, to recover the plain text WPA/WPA2 passphrase the **average** amount of time for the transitional **online brute force** method is **between 4-10 hours**. In practice, it will generally take half this time to guess the correct WPS pin and recover the passphrase.
When using the **offline attack**, **if** the AP is vulnerable, it may take only a matter of **seconds to minutes**.

# Requirements  

## Build-time dependencies

 - libpcap-dev  
 - build-essential

## Runtime-time dependencies  

 - pixiewps (optional, required for pixiedust attack)  
 - aircrack-ng (optional, though recommended)  

## Example 
```
apt -y install build-essential libpcap-dev aircrack-ng pixiewps
```
_The example uses [Kali Linux](https://www.kali.org/) as the Operating System (OS) as `pixiewps` is included._

You **must** already have Wiire's Pixiewps installed to perform a pixie dust attack, latest version can be found in its [official github repository](https://github.com/wiire/pixiewps).

- - -

# Setup

**Download**

`git clone https://github.com/SecuPrint/reaver`
**Locate the shell**

`cd reaver`  
`cd src`  

**Compile**

`./configure`  
`make`  

**Install**

`sudo make install`  

- [Credits](CREDITS.md)
