# SELinux-Sandboxing

SELinux is a Mandatory Access Control solution for Linux. 
Under targeted SELinux, certain high-risk applications (ssh, Apache, sendmail, etc.) are placed in domains. 
A domain's privileges are restricted to no more than what is required to run the process contained in that domain. 
As a result, should a vulnerability in a high-risk application be exploited, the ensuing damage is limited to the domain in which that application executes.

The implmentation:

1. Employs SELinux to implement the principle of least privilege by sandboxing a server to a particular domain (i.e. set of privileges). 
2. Shows how SELinux prohibits any server action not expressly permitted by the server's security policy. 
3. Shows how SELinux shuts down the server when a security policy violation is detected. 
Develops, installs and demonstrates an SELinux policy module that runs the server program in its own domain.

The demo video demonstrates:

1. The unconfined server running in an unconfined domain,
2. a successful "attack" against the unconfined server (simply simulated by selecting the attack option),
3. how the unconfined server can listen on any port,
4. the sandboxed server running in its own constrained domain,
5. how the sandboxed server prevents the attack,
6. how the sandboxed server is restricted to operating only on port 8001

#============= steps to build/install the policy =======================

#1. Login as root

#2. navigate to /home/student/confined

#3. Run command - make -f /usr/share/selinux/devel/Makefile server_policy.pp (Assuming the name of type enforcement(.te) file is server_policy.te)

#4. Run command - semodule -i server_policy.pp

#5. Run script  - context_port_commands.sh (Changes the context of files in the confined directory, and makes sure that server can only bind to port 8001)

#6. Run command - make -f /usr/share/selinux/devel/Makefile load

#7. Exit root and test


 
