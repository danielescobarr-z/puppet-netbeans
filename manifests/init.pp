class netbeans {

  file { "/opt/elcweb":
    ensure => directory,
  }

  file { "/opt/elcweb/packages":
    ensure => directory,
  }

  file { "/opt/elcweb/packages/netbeans-elcweb.deb":
    owner   => root,
    group   => root,
    mode    => 644,
    ensure  => present,
    source  => "puppet:///netbeans/netbeans-elcweb.deb"
  }

  package { "netbeans":
    provider => dpkg,
    ensure => installed,
    source => "/opt/elcweb/packages/netbeans-elcweb.deb"
  }
  
}
                                
