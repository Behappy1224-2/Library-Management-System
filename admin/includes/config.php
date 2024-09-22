<?php
define('DB_HOST', 'LAPTOP-TD6TOGV7\SQLEXPRESS');  // SQL Server 的伺服器地址
define('DB_NAME', 'Project');   // SQL Server 的數據庫名稱
define('DB_USER', '');
define('DB_PASS', '');
try {
    $dbh = new PDO("sqlsrv:Server=".DB_HOST.";Database=".DB_NAME,DB_USER, DB_PASS);
    $dbh->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
} catch (PDOException $e) {
    exit("Error: " . $e->getMessage());
}
?>