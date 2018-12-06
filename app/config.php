<?php
ini_set('error_log', 'data/icehrm.log');

define('APP_NAME', 'Ice Hrm');
define('FB_URL', 'Ice Hrm');
define('TWITTER_URL', 'Ice Hrm');

define('CLIENT_NAME', 'app');
define('APP_BASE_PATH', '/Applications/XAMPP/htdocs/softkeepers/core/');
define('CLIENT_BASE_PATH', '/Applications/XAMPP/htdocs/softkeepers/apps/');
define('BASE_URL','http://localhost/softkeepers/web/');
define('CLIENT_BASE_URL','http://localhost/softkeepers/app/');

define('APP_DB', 'softkeepers');
define('APP_USERNAME', 'root');
define('APP_PASSWORD', '');
define('APP_HOST', 'localhost');
define('APP_CON_STR', 'mysqli://'.APP_USERNAME.':'.APP_PASSWORD.'@'.APP_HOST.'/'.APP_DB);

//file upload
define('FILE_TYPES', 'jpg,png,jpeg');
define('MAX_FILE_SIZE_KB', 10 * 1024);
