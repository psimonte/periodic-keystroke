This Project uses xdotool to periodically send a Keystroke to a selcted running X11 Window

This Repository Conatains the script for this and a systemd service which 
configure and run the script in background

Install (Tested on Ubuntu 20.04.3 LTS ):
 * install packages in defs/packages (apt-get install)
 * clone repository to /opt/
 * (or copy bin/periodic-key.sh to /opt/periodic-keystroke/bin/periodic-key.sh)
 * copy systemd/periodic-key.service to /etc/systemd/user/periodic-key.service
 * run systemctl --user enable --now periodic-key.service
