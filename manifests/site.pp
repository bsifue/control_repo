node default {
  file{'/root/README':
    ensure    => file,
    content   => 'This is a readme',
    owner     => 'root',
  }
  
  file{'/root/helloWorld':
    ensure    => file,
    content   => 'hello world - special notes - 
      All Rescource Types: https://docs.puppet.com/latest/type.html',
    owner     => 'root',
  }
}
node 'master.puppet.vm' {
  include role::master_server
}
