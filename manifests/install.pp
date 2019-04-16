# Install tomcat JAVA web server
class tomcat::install inherits tomcat {
  package { $::tomcat::params::packages :
    ensure => installed, # default, can be omitted
  }
}
