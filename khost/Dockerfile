# @edt ASIX-m11 Curs 2017-2018
# kerberos host
#servidor ssh amb kerberos creacio interactiu
#-----------------------------------------------------------------------
FROM fedora:24
MAINTAINER asixm11@edt "@edt ASIX-m11"
RUN dnf -y install nmap procps krb5-libs krb5-workstation openssh openssh-clients passwd \
  pam_krb5 finger util-linux-user
RUN mkdir /opt/docker/
COPY * /opt/docker/
RUN chmod +x /opt/docker/create_users.sh
RUN rm -rf /var/run/nologin
COPY /opt/docker/krb5.conf /etc/
COPY /etc/pam.d /etc/oldpam.d
COPY /opt/docker/chfn /etc/pam.d/
COPY /opt/docker/login /etc/pam.d/
COPY /opt/docker/system-auth /etc/pam.d/
WORKDIR /opt/docker/
CMD ["/bin/bash"]
