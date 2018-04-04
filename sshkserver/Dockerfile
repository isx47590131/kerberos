# @edt ASIX-m11 Curs 2017-2018
# kerberos ssh sever
#servidor ssh amb kerberos creacio interactiu
#-----------------------------------------------------------------------
FROM fedora:24
MAINTAINER asixm11@edt "@edt ASIX-m11"
RUN dnf -y install nmap procps krb5-libs krb5-workstation openssh openssh-server openssh-clients passwd
RUN mkdir /opt/docker/
COPY * /opt/docker/
RUN chmod +x /opt/docker/startup.sh /opt/docker/create_users.sh
RUN ssh-keygen -A
RUN rm -rf /var/run/nologin
COPY /opt/docker/krb5.conf /etc/
COPY /opt/docker/sshd_config /etc/ssh/ 
WORKDIR /opt/docker/
CMD ["/bin/bash"]

