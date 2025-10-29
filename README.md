This is a simple script to keep a site to site VPN alive.

1. Edit the bash script to reflect the right IP address in the interesting traffic to be monitored.
2. rename the script to vpn_keepalive.sh
3. ensure the script has execute priviledges
4. create a cronjob to run the script every 10 minutes to ensure so that the pings would not be continuous.
5. edit the crontab to to schedule the script to run every  10 minutes :  contab -e         
6. put in the schedule:  */10 * * * * /opt/Keep_alive_Scripts/vpn_keepalive.sh
7. execute the script to test that it has permisison to run and create the log file. ./vpn_keepalive.sh
