# a puppet manuscript to GET HTTP method is requested to Apache web server to Fix 500 error

$file_to_edit = '/var/www/html/wp-settings.php'

#replace line containing "phpp" with "php"

exec { 'replace_line':
  command => "sed -i 's/phpp/php/g' ${file_to_edit}",
  path    => ['/bin','/usr/bin']
}
