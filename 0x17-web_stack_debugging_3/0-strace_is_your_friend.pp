# a puppet manuscript to GET HTTP method is requested to Apache web server to Fix 500 error

$file_to_edit = '/var/www/html/wp-settings.php'

exec { 'replace_line':
command => "sudo sed -1 's/phpp/php/g' /var/www/html/wp-settings.php"
}
