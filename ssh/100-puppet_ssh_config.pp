# Script para conectarse a un servidor sin ingresar una contraseña.
file_line { 'configuration_file':
  ensure => 'present',
  path   => '/etc/ssh/ssh_config',
  line   => '	IdentityFile ~/.ssh/school',
}

file_line { 'no_password':
  ensure => 'present',
  path   => '/etc/ssh/ssh_config',
  line   => '	PasswordAuthentication no',
}
