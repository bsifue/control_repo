class profile::ssh_server {
  package {'openssh-server':
    ensure => present,
  }
  service { 'sshd':
    ensure => 'running'
    enable => 'true',
  }
  ssh_authorized_key { 'root@master.puppet.vm':
    ensure => present,
    user => root,
    type => ssh-rsa,
    key => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQCx7kgF+ETIQgGBAZcfsT8GJA8AfDvxvEuzb+wvUBoFkPrsRRCikEu3Xwie8zXJtwmdQPJjmqJ7ltKKQB7hhglqXR+zfOGXbGaNymbLdx1EbDHxUDKntBmKKTpKZIhllh3v8zAp7ZriTyD81O7dlyj6t7lja303IGn9Hnb4TrY0f37pkfJIyUdPkpxMeISQMB58hg+Jb2z1UoxnRA3a/pvB/1gqJip4hUHUBlaOuXutW1qnw50+j6w22/qXJw8r75jHK1kGNElHisN1w1sVM8Jp8Xc6WH1T32fOPE3PrddimSwCNgGtF7kDCdwP507cBj5hJdq+muONjoGgMCmbWX+B'
  }
}
