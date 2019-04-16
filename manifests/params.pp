# All module and tomcat paramters
class tomcat::params {
  $user = 'tomcat'
  $group = 'tomcat'
  $config_path = '/etc/tomcat/tomcat.conf'
  $packages = [ 'tomcat', 'tomcat-webapps' ]
  $service_name = 'tomcat'
  $service_state = running

  $tomcat_cfg_loaded = '1'
  $java_home = '/usr/lib/jvm/jre'
  $catalina_base = '/usr/share/tomcat'
  $catalina_home = '/usr/share/tomcat'
  $jasper_home = '/usr/share/tomcat'
  $catalina_tmpdir = '/var/cache/tomcat/temp'

  $java_opts_xms = '64m'
  $java_opts_xmx = '128m'
  $java_opts_maxpermsize = '128M'
  $java_opts_system_properties = '-Djava.security.egd=file:/dev/./urandom'

  $tomcat_user = 'tomcat'
  $security_manager = 'false'
  $shutdown_wait='30'
  $shutdown_verbose = 'false'
  $catalina_pid = '/var/run/tomcat.pid'
  $connector_port = '8080'

  $deploy_path = '/var/lib/tomcat/webapps'
  $checksum = 'md5'
}
