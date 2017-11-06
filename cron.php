<?php

set_time_limit(0);
define('CP', TRUE);

require_once "config/config_db.php";
require_once "sys/engine/classes/Main.php";
require_once "vendor/simple_html_dom.php";

$dbh = new mysqli($ConfigDB["host"], $ConfigDB["user"], $ConfigDB["passwd"], $ConfigDB["name"]);

if (mysqli_connect_errno()){
	exit("Error connecting to MySQL database: Database server " . $ConfigDB["host"] . " is not available!");
}

if ($ConfigDB["charset"] != '') {
	$dbh->query("SET NAMES " . $ConfigDB["charset"] . "");
}

$fh = fopen(__FILE__, 'r');

if (!flock($fh, LOCK_EX | LOCK_NB)){
	exit('Script is already running');
}

$query = "SELECT *, p.id AS id, p.url AS url FROM " . $ConfigDB["prefix"] . "price p LEFT JOIN " . $ConfigDB["prefix"] . "shops s ON s.id=p.shop_id";
$result = $dbh->query($query);

while($row = $result->fetch_array()) {
    if ($row['url'] && $row['template']) {
	    $html = new simple_html_dom($row['url']);

        if($html->find($row['template'], $row['pos'] ? $row['pos'] : 0)) {
			echo $row['url'];
		    echo $row['template'];
			
            $price = $html->find($row['template'], $row['pos'] ? $row['pos'] : 0)->innertext;

			if ($price) {
				$update = "UPDATE " . $ConfigDB["prefix"] . "price SET price='" . $price . "', updated_at=NOW(), status='yes' WHERE id=" . $row['id'];
				$dbh->query($update);
			}
        }  
		
		 $html->clear();
         unset($html);
    }
}

$dbh->close();