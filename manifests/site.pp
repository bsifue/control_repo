node default {
    file{'/root/helloWorld':
    ensure    => file,
    content   => 'hello world - special notes - 
    All Rescource Types: https://docs.puppet.com/latest/type.html',
    owner     => 'root',
    }
}

node 'master.puppet.vm' {
  include role::master_server
  
  file{'/root/README':
    ensure    => file,
    content   => "Welcome to marwin $fqdn",
    }
}
node 'minetest.puppet.vm' {
    include::minecraft_server
}
node /^web/ {
    include role::app_server
}
node /^db/ {
    include role::db_server
}
