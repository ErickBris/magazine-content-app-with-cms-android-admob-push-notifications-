<?php header('content-type: application/json; charset=utf-8');header('Access-Control-Allow-Origin: *');require_once('admin_mca/invedion_connect.php');$cn=idbc();$iaddc=$cn->real_escape_string($_GET['iaddc']);$idelc=$cn->real_escape_string($_GET['idelc']);$uid=$cn->real_escape_string($_GET['uid']);if($iaddc&&$uid){$question=$cn->query("INSERT INTO mca_favorite VALUES ('', '$uid', '$iaddc')");if($question){$json='{"mca":{"status":"ok"}}';echo $_GET['callback'].'('.$json.')';}else{$json='{"mca":{"status":"no"}}';echo $_GET['callback'].'('.$json.')';}}if($idelc&&$uid){$question=$cn->query("DELETE FROM mca_favorite WHERE id_user = '$uid' AND id_content ='$idelc'");if($question){$json='{"mca":{"status":"ok"}}';echo $_GET['callback'].'('.$json.')';}else{$json='{"mca":{"status":"no"}}';echo $_GET['callback'].'('.$json.')';}}?>