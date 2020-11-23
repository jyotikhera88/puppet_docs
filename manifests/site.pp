node 'slave.example.com' {
  file{'info1.txt' :
    path => '/tmp/',
    ensure => 'present',
    content => "new1 file to be created \n"
    }
  package{'httpd' :
    ensure => 'present',
    }
  service{'httpd' :
    ensure => 'running',
    }
  notify{'This is production envirnment' :
    {
}
