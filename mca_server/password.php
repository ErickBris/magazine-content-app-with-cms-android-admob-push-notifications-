<?php header('content-type: application/json; charset=utf-8');header('Access-Control-Allow-Origin: *');require_once('admin_mca/invedion_connect.php');$cn=idbc();$login=$cn->real_escape_string($_GET['login']);if($login){if(ereg('^[a-zA-Z0-9_\.\-]+@[a-zA-Z0-9\-]+\.[a-zA-Z0-9\-\.]+$',$login)){$question=$cn->query("SELECT * FROM mca_users WHERE mail = '$login'");if($question->num_rows>0){$new_password=uniqid('');$question_np=$cn->query("UPDATE mca_users SET pass = sha1('$new_password') WHERE mail = '$login'");if($question_np){$message="Your new password: $new_password\n\nRegards\nMagazine Content App Team";if(mail("$login","Magazine Content App - new password","$message","MIME-Version: 1.0\n"."Content-type: text/plain; charset=utf-8\n"."Content-Transfer-Encoding: 8bit\n"."From: Mobile App <$login>\n"."X-Mailer: PHP\n")){$json='{"mca":{"status":"ok"}}';echo $_GET['callback'].'('.$json.')';}}}else{$json='{"mca":{"status":"no_user"}}';echo $_GET['callback'].'('.$json.')';}}else{$json='{"mca":{"status":"incorrect_mail"}}';echo $_GET['callback'].'('.$json.')';}}else{$json='{"mca":{"status":"fields"}}';echo $_GET['callback'].'('.$json.')';}?>