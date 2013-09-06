# little network reset script for the Hurd
# Copyright (C) 2013 @d3f <http://identi.ca/d3f> <https://twitter.com/_d3f> - erbatim copying and redistribution of this entire file are permitted provided this notice is preserved.

# Get the running processes: (this is ugly)
netdde_num=`ps aux | grep netdde | grep /hurd | grep -Po "\ \d+\ "`
devnode_num=`ps aux | grep devnode | grep /hurd | grep -Po "\ \d+\ "`

# kill them:
kill $netdde_num 
kill $devnode_num

# reset the translator:
settrans -fgap /dev/netdde /hurd/netdde

# restart ssh:
/etc/init.d/ssh restart

# You saved uptime and the reboot, or at least typing by hand ;-) 
