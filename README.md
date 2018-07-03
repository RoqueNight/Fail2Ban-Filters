# Fail2Ban-Filters
Fail2Ban Filters to help Protect your Apache Web Servers from Scanners such as nmap , sqlmap , nikto , vega, and other Vulnerability Scanners by blocking the Source IP Address

# What is Fail2ban?

It is a type of HIPS (Host Intrusion Prevention System) that analyzes log files and compares them to filters to determine if the Source IP should be blocked based on behaviour or string matches

# The Files

# Filters.d Directory:

Contains the Custom Fail2ban Filters 

# Scripts

Contains Scripts that enables you to easily see who is banned, Active Web Server Connections and Unban a Specific IP Address

# jail.local

Example of the jail file that contains the custom filters 

# Installing Fail2Ban On Ubuntu

*sudo apt-get update && sudo apt-get install fail2ban -y*

*cd /etc/fail2ban*


# Installing Fail2ban on CentOS7

*sudo yum install epel-release*

*sudo yum update*

*sudo yum install fail2ban-firewalld -y*

*cd /etc/fail2ban*







