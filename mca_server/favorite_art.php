<?php header('content-type: text/html; charset=utf-8');header('Access-Control-Allow-Origin: *');require_once('admin_mca/invedion_connect.php');?> <?php $idb=addslashes(strip_tags($_GET['idb']));$art=addslashes(strip_tags($_GET['art']));$mca_access=addslashes(strip_tags($_GET['mca_access']));$uid=addslashes(strip_tags($_GET['uid']));$chd=addslashes(strip_tags($_GET['chd']));if($art){$cn=idbc();if($uid){$cq=$cn->query("SELECT id, title, desc_full, id_content FROM mca_content_articles WHERE id = '$art' AND online ='1'");}else{$cq=$cn->query("SELECT id, title, desc_demo, id_content FROM mca_content_articles WHERE id = '$art' AND online ='1'");}if($cq->num_rows>0){$show_c=$cq->fetch_row();$cqc=$cn->query("SELECT id, photo, title, description FROM mca_content WHERE id_category = '$show_c[3]' AND online ='1'");$show_cc=$cqc->fetch_row();?> <div class="content_full_bg"> <div class="content_full_options"> <?php if($chd=='del'){?> <a href="#art=<?php echo $show_c[0];?>&dela=<?php echo $show_c[0];?>"><img src="images/icon_del_art.png" width="161" height="83" class="menu_icon"/></a> <?php }else{?> <a href="#art=<?php echo $show_c[0];?>&adda=mobile&addat=<?php echo $show_c[1];?>"><img src="images/icon_add_art.png" width="161" height="83" class="menu_icon"/></a> <?php }?> <a href="#" onclick="window.plugins.socialsharing.share('<?php echo $show_c[1];?>','<?php echo $show_cc[2];?>','<?php echo 'http://'.$_SERVER['HTTP_HOST'].dirname($_SERVER['PHP_SELF']);?>/images/<?php echo $show_cc[1];?>','http://invedion.com')"><img src="images/icon_share.png" width="161" height="83" class="menu_icon"/></a> <a href="#" id="decfont"><img src="images/icon_font_down.png" width="161" height="83" class="menu_icon"/></a> <a href="#" id="deffont"><img src="images/icon_font_default.png" width="161" height="83" class="menu_icon"/></a> <a href="#" id="incfont"><img src="images/icon_font_up.png" width="161" height="83" class="menu_icon"/></a> </div> <div class="content_full_title"><?php echo $show_c[1]?></div> <div class="content_full_desc"><?php echo $show_c[2]?></div> </div> <?php }}else{$cn=idbc();$cq=$cn->query("SELECT id, photo, title, description FROM mca_content WHERE id_category = '$idb' AND online ='1' ORDER BY mca_order ASC");$show_c=$cq->fetch_row();?> <div class="content_small_bg"> <div class="content_small_txt"> <div class="content_small_title"><?php echo $show_c[2]?></div> <div class="content_small_desc"><?php echo $show_c[3]?></div> </div> <img src="<?php echo 'http://'.$_SERVER['HTTP_HOST'].dirname($_SERVER['PHP_SELF']);?>/images/<?php echo $show_c[1];?>" width="300" height="420" class="content_small_photo"> </div> <div class="tc_bg"> <span class="tc_title">Table of Contents:</span> <?php $cf=$cn->query("SELECT id FROM mca_favorite WHERE id_user = '$uid' AND id_content ='$idb'");if($cf->num_rows>0){$fi='yes';}else{$fi='no';}if($mca_access=='mca_ok!'){if($fi=='no'){?> <a href="#" onclick="window.plugins.socialsharing.share('<?php echo $show_c[2];?>','<?php echo $show_cc[3];?>','<?php echo 'http://'.$_SERVER['HTTP_HOST'].dirname($_SERVER['PHP_SELF']);?>/images/<?php echo $show_c[1];?>','http://invedion.com')" class="tc_share_big_1"><img src="images/icon_share_big.png" width="75" height="75" class="menu_icon"/></a> <a href="#idb=<?php echo $show_c[0];?>&addc=<?php echo $show_c[0];?>" class="tc_add"><img src="images/icon_library_add.png" width="75" height="75" class="menu_icon"/></a> <?php }?> <?php if($fi=='yes'){?> <a href="" class="tc_share_big_1"><img src="images/icon_share_big.png" width="75" height="75" class="menu_icon"/></a> <a href="#idb=<?php echo $show_c[0];?>&delc=<?php echo $show_c[0];?>" class="tc_add"><img src="images/icon_library_del.png" width="75" height="75" class="menu_icon"/></a> <?php }?> <?php }else{?> <a href="" class="tc_share_big_2"><img src="images/icon_share_big.png" width="75" height="75" class="menu_icon"/></a> <?php }?> </div> <?php $question_art=$cn->query("SELECT id, title FROM mca_content_articles WHERE id_content = '1' AND online ='1' ORDER BY mca_order ASC");for($lp_art=0;$rz_art=$question_art->fetch_row();++$lp_art){$tab_art[$lp_art]=$rz_art;}if($question_art->num_rows>0){$no_ca=1;foreach($tab_art as $article){?> <a href="#art=<?php echo $article[0];?>" class="tc_list"><span class="tc_list_1_bg"><?php echo $no_ca;?>.</span> <span class="tc_list_2_bg"><?php echo $article[1];?></span></a> <?php $no_ca++;}}}?>