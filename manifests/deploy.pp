# tomcat deploy define type
define tomcat::deploy(
  $deploy_url,
  $checksum_value,
  $deploy_path = $::tomcat::deploy_path,
  $checksum = $::tomcat::checksum
) {

  file{"${deploy_path}/${name}.war" : # $name is the name of the define type instance name specified in app.pp . $name is inherent to define types.
    source         => $deploy_url,
    owner          => $::tomcat::user,
    group          => $::tomcat::group,
    checksum       => $checksum,
    checksum_value => $checksum_value,
    notify         => Exec['purge_context'],
  }

  exec{'purge_context':
    path        => ['/bin', '/usr/bin', '/usr/sbin'],
    command     => "rm -rf ${deploy_path}/${name}",
    refreshonly => true, # exec will only run when it receives an event.
    notify      => Service[$::tomcat::service_name], # If a service receives an event from another resource, Puppet will restart the service it manages.
  }
}
