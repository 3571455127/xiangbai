<?php defined('IN_DESTOON') or exit('Access Denied');?><?php include template('header', 'member');?>
<?php if($action == 'update') { ?>
<?php if($step == 'detail') { ?>
<div id="head-bar">
<div class="head-bar">
<div class="head-bar-back">
<a href="<?php echo $back_link;?>" data-direction="reverse"><img src="<?php echo DT_MOB;?>static/img/icon-back.png" width="24"
height="24" /><span>返回</span></a>
</div>
<div class="head-bar-title">订单详情</div>
<div class="head-bar-right">
</div>
</div>
<div class="head-bar-fix"></div>
</div>
<?php include template('goods', 'chip');?>
<div class="main">
<div class="head bd-b"><strong>快递信息</strong></div>
<div class="content">
邮编：<?php echo $td['buyer_postcode'];?><br />
地址：<?php echo $td['buyer_address'];?><br />
姓名：<?php echo $td['buyer_name'];?><br />
手机：<?php echo $td['buyer_mobile'];?><br />
<?php if($td['send_time']) { ?>
发货日期：<?php echo $td['send_time'];?><br />
快递类型：<?php echo $td['send_type'];?><br />
快递单号：<?php echo $td['send_no'];?><?php if($td['send_type'] && $td['send_no']) { ?> &nbsp; <a href="###" class="b"
onclick="Ds('express_t');$('#express').load(AJPath+'?action=express&moduleid=2&auth=<?php echo $auth;?>');">[快递追踪]</a><?php } ?><br />
快递状态：<?php echo $_send_status[$td['send_status']];?><br />
<div id="express_t" style="display:none;">
<div id="express" style="font-size:12px;">正在查询...</div>
</div>
<?php } ?>
</div>
<div class="head bd-b"><strong>订单详情</strong></div>
<div class="content">
联系卖家：<a href="<?php echo userurl($td['seller'], 'file=contact');?>" target="_blank" class="b"><?php echo $td['seller'];?></a><br />
下单时间：<?php echo $td['adddate'];?><br />
最后更新：<?php echo $td['updatedate'];?><br />
<?php if($td['send_time']) { ?>
发货时间：<?php echo $td['send_time'];?><br />
<?php } ?>
订单状态：<?php echo $_status[$td['status']];?><br />
<?php if($td['buyer_reason']) { ?>
退款理由：<?php echo $td['buyer_reason'];?><br />
<?php } ?>
<?php if($td['refund_reason']) { ?>
操作原因：<?php echo $td['refund_reason'];?><br />
<?php } ?>
<?php if($td['status'] == 1) { ?>
<div class="blank-20"></div>
<div><a href="?itemid=<?php echo $td['itemid'];?>&action=update&step=pay">
<div class="btn-green">付 款</div>
</a></div>
<div class="blank-20"></div>
<?php } ?>
</div>
</div>
<?php } else if($step == 'express') { ?>
<div id="head-bar">
<div class="head-bar">
<div class="head-bar-back">
<a href="<?php echo $back_link;?>" data-direction="reverse"><img src="<?php echo DT_MOB;?>static/img/icon-back.png" width="24"
height="24" /><span>返回</span></a>
</div>
<div class="head-bar-title">快递信息</div>
<div class="head-bar-right">
<a href="?action=update&step=detail&itemid=<?php echo $itemid;?>"><span>订单</span></a>
</div>
</div>
<div class="head-bar-fix"></div>
</div>
<?php include template('goods', 'chip');?>
<div class="main">
<div class="head bd-b"><strong>快递信息</strong></div>
<div class="content">
发货日期：<?php echo $td['send_time'];?><br />
快递类型：<?php echo $td['send_type'];?><br />
快递单号：<?php echo $td['send_no'];?><br />
快递状态：<?php echo $_send_status[$td['send_status']];?><br />
追踪结果：<br />
<div id="express" style="font-size:12px;">正在查询...</div>
</div>
</div>
<script type="text/javascript">
$(function () {
$('#express').load(AJPath + '?action=express&moduleid=2&auth=<?php echo $auth;?>');
});
</script>
<?php } else if($step == 'pay') { ?>
<div id="head-bar">
<div class="head-bar">
<div class="head-bar-back">
<a href="<?php echo $back_link;?>" data-direction="reverse"><img src="<?php echo DT_MOB;?>static/img/icon-back.png" width="24"
height="24" /><span>返回</span></a>
</div>
<div class="head-bar-title">订单支付</div>
<div class="head-bar-right">
<a href="?action=update&step=detail&itemid=<?php echo $itemid;?>"><span>订单</span></a>
</div>
</div>
<div class="head-bar-fix"></div>
</div>
<?php include template('goods', 'chip');?>
<form method="post" action="?" id="pay_form" onsubmit="return pay_check();">
<input type="hidden" name="mid" value="<?php echo $mid;?>" />
<input type="hidden" name="action" value="<?php echo $action;?>" />
<input type="hidden" name="step" value="<?php echo $step;?>" />
<input type="hidden" name="itemid" value="<?php echo $itemid;?>" />
<input type="hidden" id="fee" value="<?php echo $money;?>" />
<div id="mymoney" style="display:none;">
<div class="blank-20"></div>
<div class="list-set">
<ul>
<li>
<div><span><b><?php echo $_money;?></b><?php echo $DT['money_unit'];?></span>账户余额</div>
</li>
</ul>
</div>
</div>
<div id="payword" style="display:none;">
<div class="blank-20"></div>
<div class="list-inp bd-t bd-b">
<div><input type="password" name="password" id="password" placeholder="支付密码：" autocomplete="new-password"
onblur="window.scrollTo(0,0);" /></div>
</div>
</div>
<div id="paytype" style="display:none;">
<div class="blank-20"></div>
<?php $PAYLIST = get_paylist();?>
<input type="hidden" name="bank" id="bank" value="<?php echo $PAYLIST['0']['bank'];?>" />
<div class="list-pay">
<ul>
<?php if(is_array($PAYLIST)) { foreach($PAYLIST as $k => $v) { ?>
<li
onclick="var bk=$('#bank').val();if(bk=='<?php echo $v['bank'];?>'){return;}$('#check-'+bk).attr('class', 'check');$('#check-<?php echo $v['bank'];?>').attr('class', 'checked');$('#bank').val('<?php echo $v['bank'];?>');">
<div><em class="<?php if($k) { ?>check<?php } else { ?>checked<?php } ?>" id="check-<?php echo $v['bank'];?>"></em><img
src="<?php echo DT_PATH;?>api/pay/<?php echo $v['bank'];?>/icon.png" width="24" height="24" /><?php echo $v['name'];?> <?php if($v['percent']>0) { ?><span>手续费 <?php echo $v['percent'];?>%</span><?php } ?></div>
</li>
<?php } } ?>
</ul>
</div>
</div>
<?php if($DT['sms']) { ?>
<div class="blank-20"></div>
<div class="list-txt">
<ul>
<li>
<div><span><a href="sms.php">可用短信 <b><?php echo $_sms;?></b> 条</a></span><input type="checkbox" name="sendsms"
id="sendsms" value="1" /> 短信通知卖家发货</div>
</li>
</ul>
</div>
<?php } ?>
<div class="blank-20"></div>
<div class="list-btn"><input type="submit" name="submit" value="立即支付" class="btn-green" /></div>
<div class="blank-20"></div>
</form>
<script type="text/javascript">
function pay_check() {
var money = $('#fee').val();
if (money > {
$_money
}) {
Go('charge.php?action=pay&reason=trade|<?php echo $itemid;?>&amount=' + money + '&bank=' + $('#bank').val());
return false;
}
if (money > {
$DT[quick_pay]
}) {
if (Dd('password').value.length < 6) {
Dmsg('请填写支付密码', 'password');
return false;
}
}
return true;
}
window.setInterval(
function () {
var money = $('#fee').val();
if (money > {
$_money
} || {
$_money
} < 0.01) {
$('#mymoney').hide();
$('#paytype').show();
$('#payword').hide();
} else {
$('#mymoney').show();
$('#paytype').hide();
if (money > {
$DT[quick_pay]
}) {
$('#payword').show();
}
}
},
500);
</script>
<?php } else if($step == 'remind') { ?>
<div id="head-bar">
<div class="head-bar">
<div class="head-bar-back">
<a href="<?php echo $back_link;?>" data-direction="reverse"><img src="<?php echo DT_MOB;?>static/img/icon-back.png" width="24"
height="24" /><span>返回</span></a>
</div>
<div class="head-bar-title">提醒发货</div>
<div class="head-bar-right">
<a href="?action=update&step=detail&itemid=<?php echo $itemid;?>"><span>订单</span></a>
</div>
</div>
<div class="head-bar-fix"></div>
</div>
<form action="message.php" method="post" id="remind">
<input type="hidden" name="action" value="send" />
<input type="hidden" name="forward" value="<?php echo $MOD['mobile'];?>order.php?action=update&step=detail&itemid=<?php echo $itemid;?>" />
<input type="hidden" name="touser" value="<?php echo $td['seller'];?>" />
<input type="hidden" name="title" value="[发货提醒]订单(ID:<?php echo $itemid;?>)已经付款，请尽快发货" />
<textarea name="content" style="display:none;">
<?php echo $td['seller'];?>，您好：<br/>
订单 <a href="<?php echo $MOD['linkurl'];?>trade.php?action=update&step=detail&itemid=<?php echo $itemid;?>" target="_blank"><?php echo $td['title'];?> (ID:<?php echo $itemid;?>)</a> 已经付款。请尽快发货！
</textarea>
</form>
<script type="text/javascript">
Dd('remind').submit();
</script>
<?php } else if($step == 'refund') { ?>
<div id="head-bar">
<div class="head-bar">
<div class="head-bar-back">
<a href="<?php echo $back_link;?>" data-direction="reverse"><img src="<?php echo DT_MOB;?>static/img/icon-back.png" width="24"
height="24" /><span>返回</span></a>
</div>
<div class="head-bar-title">申请退款</div>
<div class="head-bar-right">
<a href="?action=update&step=detail&itemid=<?php echo $itemid;?>"><span>订单</span></a>
</div>
</div>
<div class="head-bar-fix"></div>
</div>
<?php include template('goods', 'chip');?>
<script type="text/javascript" src="<?php echo DT_MOB;?>static/lib/webuploader.min.js"></script>
<form method="post" action="?" onsubmit="return check();" id="dform">
<input type="hidden" name="forward" value="<?php echo $forward;?>" />
<input type="hidden" name="mid" value="<?php echo $mid;?>" />
<input type="hidden" name="action" value="<?php echo $action;?>" />
<input type="hidden" name="step" value="<?php echo $step;?>" />
<input type="hidden" name="itemid" value="<?php echo $itemid;?>" />
<div class="ui-form">
<p>退款原因<em>*</em><b id="dcontent"></b></p>
</div>
<input type="hidden" name="content" id="content" />
<ul class="ui-editor-toolbar">
<li class="ui-editor-img">
<div id="editor-picker"></div>
</li>
<li class="ui-editor-bold" id="editor-bold" editor-action="bold">B</li>
<li class="ui-editor-italic" id="editor-italic" editor-action="italic">I</li>
<li class="ui-editor-underline" id="editor-underline" editor-action="underline">U</li>
</ul>
<div class="ui-editor-content" id="editor"></div>
<script type="text/javascript" src="<?php echo DT_MOB;?>static/js/editor.js"></script>
<script type="text/javascript">
$(function () {
$('#editor').DEditor({
editorid: 'editor',
textareaid: 'content',
server: '<?php echo DT_MOB;?>upload.php?moduleid=<?php echo $moduleid;?>&action=webuploader&from=editor'
});
});
</script>
<div class="ui-form">
<p>支付密码<em>*</em><b id="dpassword"></b></p>
<div><?php include template('password', 'chip');?></div>
<div class="blank-20"></div>
<div><input type="submit" name="submit" value="申请退款" class="btn-blue" /></div>
<div class="blank-20"></div>
</div>
</form>
<script type="text/javascript">
function check() {
var len = FCKLen();
if (len < 10) {
Dmsg('退款原因不能少于10个字，当前已输入' + len + '个字', 'content');
return false;
}
if (Dd('password').value.length < 6) {
Dmsg('请填写支付密码', 'password');
return false;
}
return confirm('您确认您提供的退款原因无误，并申请退款吗？');
}
</script>
<?php } else if($step == 'comment') { ?>
<div id="head-bar">
<div class="head-bar">
<div class="head-bar-back">
<a href="<?php echo $back_link;?>" data-direction="reverse"><img src="<?php echo DT_MOB;?>static/img/icon-back.png" width="24"
height="24" /><span>返回</span></a>
</div>
<div class="head-bar-title">交易评价</div>
<div class="head-bar-right">
<a href="?action=update&step=detail&itemid=<?php echo $itemid;?>"><span>订单</span></a>
</div>
</div>
<div class="head-bar-fix"></div>
</div>
<?php include template('goods', 'chip');?>
<form method="post" action="?" onsubmit="return check();" id="dform">
<input type="hidden" name="forward" value="<?php echo $forward;?>" />
<input type="hidden" name="action" value="<?php echo $action;?>" />
<input type="hidden" name="step" value="<?php echo $step;?>" />
<input type="hidden" name="itemid" value="<?php echo $itemid;?>" />
<div class="ui-form">
<?php if(is_array($lists)) { foreach($lists as $k => $v) { ?>
<p><?php echo $v['title'];?></p>
<p>交易打分<em>*</em><b id="dstar_<?php echo $v['itemid'];?>"></b></p>
<div>
<input type="radio" name="stars[<?php echo $v['itemid'];?>]" value="3" id="star_<?php echo $v['itemid'];?>_3" checked /><label
for="star_<?php echo $v['itemid'];?>_3"> 好评 <img src="<?php echo DT_STATIC;?>file/image/star3.gif" width="36" height="12" alt=""
align="absmiddle" /></label>
<input type="radio" name="stars[<?php echo $v['itemid'];?>]" value="2" id="star_<?php echo $v['itemid'];?>_2" /><label
for="star_<?php echo $v['itemid'];?>_2"> 中评 <img src="<?php echo DT_STATIC;?>file/image/star2.gif" width="36" height="12" alt=""
align="absmiddle" /></label>
<input type="radio" name="stars[<?php echo $v['itemid'];?>]" value="1" id="star_<?php echo $v['itemid'];?>_1" /><label
for="star_<?php echo $v['itemid'];?>_1"> 差评 <img src="<?php echo DT_STATIC;?>file/image/star1.gif" width="36" height="12" alt=""
align="absmiddle" /></label>
</div>
<p>详细评论<em>*</em><b id="dcontent_<?php echo $v['itemid'];?>"></b></p>
<div><textarea name="contents[<?php echo $v['itemid'];?>]" id="content_<?php echo $v['itemid'];?>"></textarea></div>
<?php } } ?>
<div class="blank-20"></div>
<div><input type="submit" name="submit" value="确 定" class="btn-blue" /></div>
<div class="blank-20"></div>
</div>
</form>
<script type="text/javascript">
function check() {
{
loop $lists $k $v
}
if (Dd('content_<?php echo $v['itemid'];?>').value.length > 500) {
alert('评论内容不能超过500字');
return false;
}
{
/loop}
return confirm('您确认提交此评论吗？提交后评论分数和内容将不可更改');
}
</script>
<?php } else if($step == 'comment_detail') { ?>
<div id="head-bar">
<div class="head-bar">
<div class="head-bar-back">
<a href="<?php echo $back_link;?>" data-direction="reverse"><img src="<?php echo DT_MOB;?>static/img/icon-back.png" width="24"
height="24" /><span>返回</span></a>
</div>
<div class="head-bar-title">评价详情</div>
<div class="head-bar-right">
<a href="?action=update&step=detail&itemid=<?php echo $itemid;?>"><span>订单</span></a>
</div>
</div>
<div class="head-bar-fix"></div>
</div>
<?php include template('goods', 'chip');?>
<div style="display:none;" id="explain">
<form method="post" action="?" onsubmit="return check();" id="dform">
<input type="hidden" name="forward" value="<?php echo $forward;?>" />
<input type="hidden" name="action" value="<?php echo $action;?>" />
<input type="hidden" name="step" value="<?php echo $step;?>" />
<input type="hidden" name="itemid" value="<?php echo $itemid;?>" />
<input type="hidden" name="oid" value="0" id="oid" />
<div class="ui-form">
<p>我的解释<em>*</em><b id="dcontent"></b></p>
<div><textarea name="content" id="content"></textarea></div>
<div class="blank-20"></div>
<div><input type="submit" name="submit" value="确 定" class="btn-blue" /></div>
<div class="blank-20"></div>
<div><input type="button" value="取 消" class="btn" onclick="$('#explain').slideUp(300);" /></div>
<div class="blank-20"></div>
</div>
</form>
</div>
<div class="main">
<div class="head bd-b"><strong>卖家评价</strong></div>
<div class="content">
<?php if(is_array($lists)) { foreach($lists as $k => $v) { ?>
<?php if($k > 0) { ?>
<div class="blank-20 bd-b"></div>
<div class="blank-20"></div>
<?php } ?>
商品名称：<a href="<?php echo $v['linkurl'];?>" target="_blank" class="b"><?php echo $v['title'];?></a><br />
<?php if($comments[$k]['buyer_star']) { ?>
卖家评分：<img src="<?php echo DT_STATIC;?>file/image/star<?php echo $comments[$k]['buyer_star'];?>.gif" width="36" height="12" alt=""
align="absmiddle" /> <?php echo $STARS[$comments[$k]['buyer_star']];?>
<?php if($_username == $td['buyer'] && !$comments[$k]['seller_reply']) { ?>
&nbsp;&nbsp;<a href="javascript:;" onclick="E(<?php echo $v['itemid'];?>);" class="b">[解释]</a>
<?php } ?><br />
卖家评论：<br />
<?php echo nl2br($comments[$k]['buyer_comment']);?><br />
评论时间：<?php echo timetodate($comments[$k]['buyer_ctime'], 6);?><br />
<?php if($comments[$k]['seller_reply']) { ?>
买家解释：<br />
<span style="color:#D9251D;"><?php echo nl2br($comments[$k]['seller_reply']);?></span><br />
解释时间：<?php echo timetodate($comments[$k]['seller_rtime'], 6);?><br />
<?php } ?>
<?php } else { ?>
卖家评论：暂未评论<br />
<?php } ?>
<?php } } ?>
</div>
<div class="head bd-b"><strong>我的评价</strong></div>
<div class="content">
<?php if(is_array($lists)) { foreach($lists as $k => $v) { ?>
<?php if($k > 0) { ?>
<div class="blank-20 bd-b"></div>
<div class="blank-20"></div>
<?php } ?>
商品名称：<a href="<?php echo $v['linkurl'];?>" target="_blank" class="b"><?php echo $v['title'];?></a><br />
<?php if($comments[$k]['seller_star']) { ?>
买家评分：<img src="<?php echo DT_STATIC;?>file/image/star<?php echo $comments[$k]['seller_star'];?>.gif" width="36" height="12" alt=""
align="absmiddle" /> <?php echo $STARS[$comments[$k]['seller_star']];?><br />
买家评论：<br />
<?php echo nl2br($comments[$k]['seller_comment']);?><br />
评论时间：<?php echo timetodate($comments[$k]['seller_ctime'], 6);?><br />
<?php if($comments[$k]['buyer_reply']) { ?>
卖家解释：<br />
<span style="color:#D9251D;"><?php echo nl2br($comments[$k]['buyer_reply']);?></span><br />
解释时间：<?php echo timetodate($comments[$k]['buyer_rtime'], 6);?><br />
<?php } ?>
<?php } else { ?>
买家评论：暂未评论<br />
<?php } ?>
<?php } } ?>
</div>
</div>
<script type="text/javascript">
function check() {
if (Dd('content').value.length < 2) {
alert('解释内容不能少于2字');
return false;
}
if (Dd('content').value.length > 500) {
alert('解释内容不能超过500字');
return false;
}
return confirm('您确认提交此解释吗？提交后解释内容将不可更改');
}
function S() {
Inner('chars', Dd('content').value.length);
}
function E(oid) {
$('#explain').hide();
$("html, body").animate({
scrollTop: $('#explain').offset().top
}, 200);
$('#oid').val(oid);
$('#explain').slideDown(300);
}
</script>
<?php } ?>
<?php } else if($action == 'express') { ?>
<div id="head-bar">
<div class="head-bar">
<div class="head-bar-back">
<a href="<?php echo $back_link;?>" data-direction="reverse"><img src="<?php echo DT_MOB;?>static/img/icon-back.png" width="24"
height="24" /><span>返回</span></a>
</div>
<div class="head-bar-title">我的快递</div>
<div class="head-bar-right">
<a href="?action=index"><span>订单</span></a>
</div>
</div>
<div class="head-bar-fix"></div>
</div>
<?php if(is_array($lists)) { foreach($lists as $v) { ?>
<div class="list-img">
<ul>
<li><span class="f_r"><?php echo $v['dstatus'];?></span><a
href="?itemid=<?php echo $v['itemid'];?>&action=update&step=express"><strong><?php echo $v['send_type'];?></strong></a></li>
<li><em class="f_r"><?php echo $v['updatetime'];?></em><span><?php echo $v['send_no'];?></span></li>
</ul>
</div>
<?php } } ?>
<?php if($pages) { ?><div class="pages"><?php echo $pages;?></div><?php } ?>
<?php } else if($action == 'muti') { ?>
<link rel="stylesheet" type="text/css" href="<?php echo DT_MOB;?>static/cart.css" />
<div id="head-bar">
<div class="head-bar">
<div class="head-bar-back">
<a href="<?php echo $back_link;?>" data-direction="reverse"><img src="<?php echo DT_MOB;?>static/img/icon-back.png" width="24"
height="24" /><span>返回</span></a>
</div>
<div class="head-bar-title">批量付款</div>
<div class="head-bar-right">
<a href="?action=index"><span>取消</span></a>
</div>
</div>
<div class="head-bar-fix"></div>
</div>
<form method="post" action="?" onsubmit="return check();" id="dform">
<input type="hidden" name="action" value="<?php echo $action;?>" />
<?php if(is_array($lists)) { foreach($lists as $k => $v) { ?>
<div class="list-goods bd-b">
<table cellpadding="0" cellspacing="0" width="100%">
<tr>
<td class="c1">
<section><label><input type="checkbox" name="itemid[]" value="<?php echo $v['itemid'];?>" checked
id="check_<?php echo $v['itemid'];?>" onclick="calculate(<?php echo $v['itemid'];?>)" /><i></i></label></section>
</td>
<td class="c2"><a href="<?php echo $v['linkurl'];?>"><img
src="<?php if($v['thumb']) { ?><?php echo $v['thumb'];?><?php } else { ?>static/img/nopic-60.png<?php } ?>" width="60" height="60"
alt="" onerror="this.src='static/img/nopic-60.png';" /></a></td>
<td>
<p><a href="<?php echo $v['linkurl'];?>"><?php echo $v['title'];?></a></p>
<b><?php echo $v['par'];?></b>
<div>
<table cellpadding="0" cellspacing="0" width="100%">
<tr>
<td><?php echo $DT['money_sign'];?><?php echo $v['price'];?>x<?php echo $v['number'];?></td>
<td class="a2"><em class="f_b"><?php echo $DT['money_sign'];?><?php echo $v['money'];?></em></td>
<td class="a3"><input type="hidden" id="money_<?php echo $v['itemid'];?>" value="<?php echo $v['money'];?>" /></td>
</tr>
</table>
</div>
</td>
</tr>
</table>
</div>
<?php if(isset($tags[$v['itemid']])) { ?>
<?php if(is_array($tags[$v['itemid']])) { foreach($tags[$v['itemid']] as $i => $t) { ?>
<div class="list-goods bd-b">
<table cellpadding="0" cellspacing="0" width="100%">
<tr>
<td class="c1"></td>
<td class="c2"><a href="<?php echo $t['linkurl'];?>"><img
src="<?php if($t['thumb']) { ?><?php echo $t['thumb'];?><?php } else { ?>static/img/nopic-60.png<?php } ?>" width="60" height="60"
alt="" onerror="this.src='static/img/nopic-60.png';" /></a></td>
<td>
<p><a href="<?php echo $t['linkurl'];?>"><?php echo $t['title'];?></a></p>
<b><?php echo $t['par'];?></b>
<div>
<table cellpadding="0" cellspacing="0" width="100%">
<tr>
<td><?php echo $DT['money_sign'];?><?php echo $t['price'];?>x<?php echo $t['number'];?></td>
<td class="a2"></td>
<td class="a3"></td>
</tr>
</table>
</div>
</td>
</tr>
</table>
</div>
<?php } } ?>
<?php } ?>
<?php } } ?>
<div id="mymoney" style="display:none;">
<div class="blank-20"></div>
<div class="list-set">
<ul>
<li>
<div><span><b><?php echo $_money;?></b><?php echo $DT['money_unit'];?></span>账户余额</div>
</li>
</ul>
</div>
</div>
<div id="payword" style="display:none;">
<div class="blank-20"></div>
<div class="list-inp bd-t bd-b">
<div><input type="password" name="password" id="password" placeholder="支付密码：" autocomplete="new-password"
onblur="window.scrollTo(0,0);" /></div>
</div>
</div>
<div id="paytype" style="display:none;">
<div class="blank-20"></div>
<?php $PAYLIST = get_paylist();?>
<input type="hidden" name="bank" id="bank" value="<?php echo $PAYLIST['0']['bank'];?>" />
<div class="list-pay">
<ul>
<?php if(is_array($PAYLIST)) { foreach($PAYLIST as $k => $v) { ?>
<li
onclick="var bk=$('#bank').val();if(bk=='<?php echo $v['bank'];?>'){return;}$('#check-'+bk).attr('class', 'check');$('#check-<?php echo $v['bank'];?>').attr('class', 'checked');$('#bank').val('<?php echo $v['bank'];?>');">
<div><em class="<?php if($k) { ?>check<?php } else { ?>checked<?php } ?>" id="check-<?php echo $v['bank'];?>"></em><img
src="<?php echo DT_PATH;?>api/pay/<?php echo $v['bank'];?>/icon.png" width="24" height="24" /><?php echo $v['name'];?> <?php if($v['percent']>0) { ?><span>手续费 <?php echo $v['percent'];?>%</span><?php } ?></div>
</li>
<?php } } ?>
</ul>
</div>
</div>
<?php if($DT['sms']) { ?>
<div class="blank-20"></div>
<div class="list-txt">
<ul>
<li>
<div><span><a href="sms.php">可用短信 <b><?php echo $_sms;?></b> 条</a></span><input type="checkbox" name="sendsms"
id="sendsms" value="1" /> 短信通知卖家发货</div>
</li>
</ul>
</div>
<div class="blank-20"></div>
<?php } ?>
<div class="cart-foot-fix"></div>
<div class="cart-foot">
<table cellpadding="0" cellspacing="0" width="100%">
<tr>
<td class="c1"></td>
<td class="c2">
<p>共<b id="total_good"></b>件，计<b id="total_amount"></b>元</p>
</td>
<td class="c3"><input name="submit" type="submit" value="支付" /></td>
</tr>
</table>
</div>
</form>
<script type="text/javascript">
var amount = 0;
var itemids = [{
loop $lists $i $t
} {
if $i
},
{
/if}'<?php echo $t['itemid'];?>'{/loop
}
];
function calculate(id) {
var _good = _amount = 0;
for (var i = 0; i < itemids.length; i++) {
var itemid = itemids[i];
if (Dd('check_' + itemid).checked) {
_good++;
_amount += parseFloat(Dd('money_' + itemid).value);
}
}
if (_good < 1) {
alert('至少需要选择一个订单');
Dd('check_' + (id ? id : itemid)).checked = true;
setTimeout('calculate()', 1000);
}
amount = _amount;
Dd('total_good').innerHTML = _good;
Dd('total_amount').innerHTML = _amount.toFixed(2);
}
calculate();
function check() {
if (amount > {
$_money
}) {
var k = '';
for (var i = 0; i < itemids.length; i++) {
var itemid = itemids[i];
if (Dd('check_' + itemid).checked) {
k += k ? ',' + itemid : itemid;
}
}
Go('charge.php?action=pay&reason=trades|' + k + '&amount=' + amount + '&bank=' + $('#bank').val());
return false;
}
var f, l;
f = 'password';
l = Dd(f).value.length;
if (l < 6) {
Dmsg('请填写支付密码', f);
return false;
}
return true;
}
window.setInterval(
function () {
var money = amount; //$('#fee').val();
if (money > {
$_money
} || {
$_money
} < 0.01) {
$('#mymoney').hide();
$('#paytype').show();
$('#payword').hide();
} else {
$('#mymoney').show();
$('#paytype').hide();
if (money > {
$DT[quick_pay]
}) {
$('#payword').show();
}
}
},
500);
</script>
<?php } else { ?>
<div id="head-bar">
<div class="head-bar">
<div class="head-bar-back">
<a href="<?php echo $back_link;?>" data-direction="reverse"><img src="<?php echo DT_MOB;?>static/img/icon-back.png" width="24"
height="24" /><span>返回</span></a>
</div>
<div class="head-bar-title"
onclick="Dsheet('<a href=&#34;?action=muti&#34;><span>批量付款</span></a>|<a href=&#34;?action=express&#34;><span>我的快递</span></a>', '取消');">
我的订单 &#9662;</div>
<div class="head-bar-right">
<a href="javascript:window.scrollTo(0,0);$('#order-search').slideToggle(300);"><img
src="<?php echo DT_MOB;?>static/img/icon-search.png" width="24" height="24" /></a>
</div>
</div>
<div class="head-bar-fix"></div>
</div>
<div id="order-search" style="display:none;">
<div class="ui-form sch">
<form action="?" data-ajax="false">
<input type="hidden" name="action" value="<?php echo $action;?>" />
<div class="blank-20"></div>
<div><input type="search" name="kw" value="<?php echo $kw;?>" placeholder="输入关键词搜索" /></div>
<div class="blank-10"></div>
</form>
</div>
</div>
<div class="list-menu">
<ul class="nav nav-tabs">
<li <?php if(!in_array($nav, array(0,1,2,3,4,5,6))) { ?> class="on" <?php } ?>> <a href="?action=index">全部</a></li>
<li <?php if($nav==1) { ?> class="on" <?php } ?>> <a href="?nav=1">待付款</a></li>
<li <?php if($nav==2) { ?> class="on" <?php } ?>> <a href="?nav=2">待发货</a></li>
<li <?php if($nav==3) { ?> class="on" <?php } ?>> <a href="?nav=3">待收货</a></li>
<li <?php if($nav==5) { ?> class="on" <?php } ?>> <a href="?nav=5">待退款</a></li>
<li <?php if($nav==6) { ?> class="on" <?php } ?>> <a href="?nav=6">已退款</a></li>
<li <?php if($nav==4) { ?> class="on" <?php } ?>> <a href="?nav=4">待评价</a></li>
</ul>
</div>
<div class="blank-20"></div>
<?php if(is_array($lists)) { foreach($lists as $k => $v) { ?>
<div class="order-t bd-b bd-t">
<em><?php echo $v['dstatus'];?></em>订单号：<?php echo $v['itemid'];?>
<!--<a href="<?php echo userurl($v['seller'], 'file=contact');?>"><?php echo $v['seller'];?></a>-->
</div>
<div class="list-img">
<a href="?itemid=<?php echo $v['itemid'];?>&action=update&step=detail"><img
src="<?php if($v['thumb']) { ?><?php echo $v['thumb'];?><?php } else { ?><?php echo DT_MOB;?>static/img/60x60.png<?php } ?>" width="60" height="60" alt=""
onerror="this.src='<?php echo DT_MOB;?>static/img/60x60.png';" /></a>
<ul>
<li><a href="?itemid=<?php echo $v['itemid'];?>&action=update&step=detail"><strong><?php echo $v['title'];?></strong></a></li>
<li><em class="f_r"><?php echo $DT['money_sign'];?><?php echo $v['price'];?>x<?php echo $v['number'];?></em><span><?php echo $v['par'];?></span></li>
</ul>
</div>
<?php if(isset($tags[$v['itemid']])) { ?>
<?php if(is_array($tags[$v['itemid']])) { foreach($tags[$v['itemid']] as $i => $t) { ?>
<div class="list-img">
<a href="?itemid=<?php echo $v['itemid'];?>&action=update&step=detail"><img
src="<?php if($t['thumb']) { ?><?php echo $t['thumb'];?><?php } else { ?><?php echo DT_MOB;?>static/img/60x60.png<?php } ?>" width="60" height="60" alt=""
onerror="this.src='<?php echo DT_MOB;?>static/img/60x60.png';" /></a>
<ul>
<li><a href="?itemid=<?php echo $v['itemid'];?>&action=update&step=detail"><strong><?php echo $t['title'];?></strong></a></li>
<li><em class="f_r"><?php echo $DT['money_sign'];?><?php echo $t['price'];?>x<?php echo $t['number'];?></em><span><?php echo $t['par'];?></span></li>
</ul>
</div>
<?php } } ?>
<?php } ?>
<div class="order-p"><span class="f_r">合计：<b><?php echo $DT['money_sign'];?><?php echo $v['money'];?></b></span><?php echo $v['addtime'];?></div>
<div class="order-b">
<?php if($v['status'] == 0) { ?>
<a href="?itemid=<?php echo $v['itemid'];?>&action=update&step=close" onclick="return confirm('确实要关闭此交易吗？此操作将不可撤销');">关闭交易</a>
<?php } else if($v['status'] == 1) { ?>
<a href="?itemid=<?php echo $v['itemid'];?>&action=update&step=pay">立即付款</a>
<a href="?itemid=<?php echo $v['itemid'];?>&action=update&step=close" onclick="return confirm('确实要关闭此交易吗？此操作将不可撤销');">关闭交易</a>
<?php } else if($v['status'] == 2) { ?>
<a href="?itemid=<?php echo $v['itemid'];?>&action=update&step=remind">提醒发货</a>
<a href="?itemid=<?php echo $v['itemid'];?>&action=update&step=refund">申请退款</a>
<?php } else if($v['status'] == 3) { ?>
<?php if($v['lefttime']) { ?>
<a href="?itemid=<?php echo $v['itemid'];?>&action=update&step=receive_goods"
onclick="return confirm('确认已收到货且质量与数量无误吗？\n\n请注意:确认后您的钱将直接支付给卖家');">确认到货</a>
<?php if($v['send_type'] && $v['send_no']) { ?>
<a href="?itemid=<?php echo $v['itemid'];?>&action=update&step=express">快递追踪</a>
<?php } ?>
<a href="?itemid=<?php echo $v['itemid'];?>&action=update&step=refund">申请退款</a>
<?php } else { ?>
<?php } ?>
<?php } else if($v['status'] == 4) { ?>
<?php if($MODULE[$v['mid']]['module'] == 'mall') { ?>
<?php if($v['seller_star']) { ?>
<a href="?itemid=<?php echo $v['itemid'];?>&action=update&step=comment_detail">评价详情</a>
<?php } else { ?>
<a href="?itemid=<?php echo $v['itemid'];?>&action=update&step=comment">评价</a>
<?php } ?>
<?php } ?>
<?php } else if($v['status'] == 9) { ?>
<a href="?itemid=<?php echo $v['itemid'];?>&action=update&step=close" onclick="return confirm('确实要删除此交易吗？此操作将不可撤销');">删除订单</a>
<?php } ?>
<a href="?itemid=<?php echo $v['itemid'];?>&action=update&step=detail">订单详情</a>
</div>
<?php } } ?>
<?php if($pages) { ?><div class="pages"><?php echo $pages;?></div><?php } ?>
<?php } ?>
<?php include template('footer', 'member');?>
<style>
.head-bar span{
color:#000;
}
.list-menu .on{
border-bottom:2px solid #c84646;

}
.list-menu .on a{
color:#c84646;
}
.order-t span{
color:#c84646 !important;
font-size: 14px;
}
.list-img,
.order-t{
font-size: 14px;
border-top: none;
border-color:#e2e2e2;
}
.order-b{
background-color: #fff;
margin-bottom: 20px;
}
.order-p .f_r b{
font-weight: 400;
font-size: 15px;
}
.list-img em{
font-size: 13px;
color: #666;
}
.head-bar-title{
font-size: 16px;
}
.order-b a{
border-radius: 99px;
margin:12px 0 0 12px
}
</style>