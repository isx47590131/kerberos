# @edt ASIX-m11 Curs 2017-2018
# kerberos server
#servidor kerberos creacio interactiu
#-----------------------------------------------------------------------
FROM fedora:24
MAINTAINER asixm11@edt "@edt ASIX-m11"
RUN dnf -y update vi
RUN dnf -y install vim nmap iputils iproute mlocate procps krb5-server \
  krb5-libs krb5-workstation tree
RUN mkdir /opt/docker/
COPY * /opt/docker/
RUN chmod +x /opt/docker/startup.sh /opt/docker/create_users.sh
RUN cp krb5.conf /etc/
RUN cp kdc.conf /var/kerberos/krb5kdc/
RUN cp kadm5.acl /var/kerberos/krb5kdc/
RUN sh /opt/docker/create_users.sh
WORKDIR /opt/docker/
CMD ["/bin/bash"]
