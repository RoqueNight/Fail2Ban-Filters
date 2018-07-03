# Fail2Ban-Filters
Fail2Ban Filters to help Protect your Apache Web Servers from Scanners such as nmap , sqlmap , nikto , vega, and other Vulnerability Scanners by blocking the Source IP Address

# What is Fail2ban?

It is a type of HIPS (Host Intrusion Prevention System) that analyzes log files and compares them to filters to determine if the Source IP should be blocked based on behaviour or string matches

# The Files

# Filters.d Directory:

Contains the Custom Fail2ban Filters 

# Scripts

Contains Scripts that enables you to easily see who is banned, Active Web Server Connections and Unban a Specific IP Address

Example of the jail file that contains the custom filters 

# Installing Fail2Ban On Ubuntu
```
sudo apt-get update && sudo apt-get install fail2ban -y
cd /etc/fail2ban
```

# Installing Fail2ban on CentOS7
```
sudo yum install epel-release
sudo yum update
sudo yum install fail2ban-firewalld -y
cd /etc/fail2ban
```

# Downloading the Custom Filters
```
cd /etc/fail2ban
git clone https://github.com/RoqueNight/Fail2Ban-Filters.git
cd Fail2Ban-Filters
chmod +x Install.sh
./Install.sh
```
# Configuring the jail.local File

You can either replace the jail file, or add the Custom Jail contents to your existing jail.local file if you already have fail2ban filters

# Replacing the jail.local file with the Custom one 
```
mv jail.local jail.local.original
mv Jail.local jail.local
sudo service fail2ban restart
```
# Adding the Custom Filters to your exsisting jail.local file
```
vi jail.local

Paste the Below:

[apache-nohacking]

enbaled = true
port = http,https
filter = apache-nohacking
logpath = /var/log/apache2/*access_log
maxretry = 1

[apache-osinjection]
enabled = true
port = http,https
filyer = apache-osinjection
logpath = /var/log/apache2/*access.log
maxretry = 1

```
```
ESC - Shift: wq 
```
```
Enter
``` 

Note: Replace the logpath to */var/log/httpd/*access.log* when using CentOS

Maxretry=1 - Means that if one match is met, the Source IP Will be Blocked , which will prevent the attacker from doing any other type of Information Gathering on your Web Server

















