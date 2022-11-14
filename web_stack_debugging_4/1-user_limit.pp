# Change the OS configuration so that it is possible to login with the holberton user and open a file without any error message

exec {'Updating limits to Holberton User':
  command  => "sed -i 's/holberton soft nofile.*/holberton soft nofile 9000/' /etc/security/limits.conf",
  provider => shell
}
exec {'Updating limit to Holberton User':
  command  => "sed -i 's/holberton hard nofile.*/holberton hard nofile 9000/' /etc/security/limits.conf",
  provider => shell
}
