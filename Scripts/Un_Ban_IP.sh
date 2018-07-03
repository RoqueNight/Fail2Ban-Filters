#!/bin/bash
echo IP to Unban:

read varname

fail2ban-client set apache unbanip $varname
echo IP Unbanned
