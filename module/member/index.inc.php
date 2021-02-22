<?php 
defined('IN_DESTOON') or exit('Access Denied');
login();
require DT_ROOT.'/module/'.$module.'/common.inc.php';
if($action == 'logout' && $admin_user) {
	set_cookie('admin_user', '');
	dmsg($L['index_msg_logout'], '?reload='.$DT_TIME);
}

	$user = userinfo($_username);
//        print_r($user);
	extract($user);
        //查询订单状态数量
        //待付款
        $ordernum[] = $db->get_one("SELECT COUNT(*) AS dfknum FROM {$DT_PRE}order WHERE status=1");
        $ordernum[] = $db->get_one("SELECT COUNT(*) AS dfhnum FROM {$DT_PRE}order WHERE status=2");
        $ordernum[] = $db->get_one("SELECT COUNT(*) AS dshnum FROM {$DT_PRE}order WHERE status=3");
        $ordernum[] = $db->get_one("SELECT COUNT(*) AS dpjnum FROM {$DT_PRE}order WHERE status=4");
        $ordernum[] = $db->get_one("SELECT COUNT(*) AS tknum FROM {$DT_PRE}order WHERE status=5");
        $ordernums = array();
        foreach($ordernum as $k=>$v){
            foreach($v as $k2=>$v2){
                $ordernums[$k2] = $v2;
            }
        }
	extract($ordernums);
//        print_r($ordernums);
if($DT_PC) {
	require DT_ROOT.'/include/post.func.php';
	if($submit) {
		if(word_count($note) > 5000) message($L['index_msg_note_limit']);
		$note = '<?php exit;?>'.dhtmlspecialchars(stripslashes($note));
		file_put(DT_ROOT.'/file/user/'.dalloc($_userid).'/'.$_userid.'/note.php', $note);
		dmsg($L['op_update_success'], $MODULE[2]['linkurl']);
	}
	if($vemail && $vmobile && $vbank && $vtruename && $vcompany && !$validated) {
		$db->query("UPDATE {$DT_PRE}company SET validated=1 WHERE userid=$_userid");
		userclean($_username);
	}
	$expired = $totime && $totime < $DT_TIME ? true : false;
	$havedays = $expired ? 0 : ceil(($totime - $DT_TIME)/86400);
	$sys = array();
	$i = 0;
	$result = $db->query("SELECT itemid,title,addtime,groupids FROM {$DT_PRE}message WHERE groupids<>'' ORDER BY itemid DESC", 'CACHE');
	while($r = $db->fetch_array($result)) {
		$groupids = explode(',', $r['groupids']);
		if(!in_array($_groupid, $groupids)) continue;
		if($i > 2) continue;
		$i++;
		$sys[] = $r;
	}
	$note = DT_ROOT.'/file/user/'.dalloc($_userid).'/'.$_userid.'/note.php';
	$note = file_get($note);
	if($note) {
		$note = substr($note, 13);
	} else {
		$note = $MOD['usernote'];
	}
	$t = explode('.', $_money);
	$my_money = $t[0].'<span>.'.$t[1].'</span>';
	$head_title = '';
} else {
	$head_title = $MOD['name'];
	$foot = 'my';
}
include template('index', $module);
?>