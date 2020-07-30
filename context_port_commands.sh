#!/bin/sh
semanage fcontext -a -t ca645_server_exec_t "/home/student/confined(/.*)?"
restorecon -R -v /home/student/confined
semanage port -a -t ca645_server_port_t -p tcp 8001
