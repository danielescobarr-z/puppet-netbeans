class netbeans {

  file { "/opt/elcweb/packages":
    ensure => directory
  }

  file { "/opt/elcweb/packages/netbeans-elcweb.deb":
    owner   => root,
    group   => root,
    mode    => 644,
    ensure  => present,
    source  => "puppet://puppet/adobe-air-2-0-4/adobeair-2.0.4.deb"
  }

  package { "netbeans":
    provider => dpkg,
    ensure => installed,
    source => "/opt/elcweb/packages/netbeans-elcweb.deb"
  }
  
}
                                
