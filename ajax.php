<?php
/*
	[ System] Copyright (c) 2008-2018 www.yige-tech.com
	This is NOT a freeware, use is subject to license.txt
*/
require 'common.inc.php';
if($DT_BOT) dhttp(403);
if($action != 'mobile') {
	check_referer() or exit;
}
require DT_ROOT.'/include/post.func.php';
@include DT_ROOT.'/api/ajax/'.$action.'.inc.php';
?>