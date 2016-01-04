# Base install

sed -i "s/^.*requiretty/#Defaults requiretty/" /etc/sudoers

yum -y install epel-release
yum -y install gcc make gcc-c++ kernel-devel zlib-devel openssl-devel readline-devel sqlite-devel perl wget dkms nfs-utils

# Make ssh faster by not waiting on DNS
echo "UseDNS no" >> /etc/ssh/sshd_config
