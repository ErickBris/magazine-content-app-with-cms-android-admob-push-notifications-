<?php header('content-type: text/html; charset=utf-8');header('Access-Control-Allow-Origin: *');require_once('admin_mca/invedion_connect.php');?> <?php $mca_access=addslashes(strip_tags($_GET['mca_access']));$uid=addslashes(strip_tags($_GET['uid']));if(!empty($uid)&&!empty($mca_access)){?> <div style="margin:20px 0 40px 15px"> <?php $cn=idbc();$question_fav=$cn->query("SELECT id_content FROM mca_favorite WHERE id_user = '$uid' ORDER BY id DESC");for($lp=0;$rz=$question_fav->fetch_row();++$lp){$tab[$lp]=$rz;}if($question_fav->num_rows>0){foreach($tab as $content_fav){$question=$cn->query("SELECT id, photo FROM mca_content WHERE id = '$content_fav[0]' AND online ='1'");$fm=$question->fetch_row();if($question->num_rows>0){?> <a href="#idb=<?php echo $fm[0];?>" class="magazine"><img src="<?php echo 'http://'.$_SERVER['HTTP_HOST'].dirname($_SERVER['PHP_SELF']);?>/images/<?php echo $fm[1];?>" width="300" height="420"></a> <?php }?> <?php }}else{?><div class="ce" id="lx32">Your library is empty</div><?php }?> </div> <?php }?>