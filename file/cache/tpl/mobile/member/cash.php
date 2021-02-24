<?php defined('IN_DESTOON') or exit('Access Denied');?><?php include template('header', 'member');?>
<div id="head-bar">
<div class="head-bar">
<div class="head-bar-back">
<a href="<?php echo $back_link;?>" data-direction="reverse"><img src="<?php echo DT_MOB;?>static/img/icon-back.png" width="24" height="24"/><span>返回</span></a>
</div>
<div class="head-bar-title"><?php if($action == 'record') { ?>提现记录<?php } else if($action == 'setting') { ?>帐号设置<?php } else { ?>申请提现<?php } ?></div>
<div class="head-bar-right"><?php if($action == 'record') { ?><a href="?action=index"><span>提现</span></a><?php } else { ?><a href="?action=record"><span>取消</span></a><?php } ?></div>
</div>
<div class="head-bar-fix"></div>
</div>
<?php if($action == 'record') { ?>
<?php if($lists) { ?>
<?php if(is_array($lists)) { foreach($lists as $v) { ?>
<div class="list-img">
<ul>
<li>
<span class="f_r"><?php echo $v['dstatus'];?></span>
<strong style="font-size:24px;">+<?php echo $v['amount'];?></strong>
</li>
<li><span class="f_r"><?php echo $v['bank'];?></span><span><?php echo $v['addtime'];?></span></li>
</ul>
</div>
<?php } } ?>
<?php } ?>
<?php if($pages) { ?><div class="pages"><?php echo $pages;?></div><?php } ?>
<?php } else if($action == 'setting') { ?>
<div class="list-tab">
<ul>
<li><a href="?action=index" data-transition="flip"><span>申请提现</span></a></li>
<li class="on"><a href="?action=setting" data-transition="flip"><span>帐号设置</span></a></li>
</ul>
</div>
<?php if($vbank) { ?>
<div class="main">
<div class="content">
开户银行：<?php echo $member['bank'];?><br/>
开户网点：<?php echo $member['branch'];?><br/>
收款户名：<?php if($member['banktype']) { ?><?php echo $member['company'];?><?php } else { ?><?php echo $member['truename'];?><?php } ?><br/>
帐号类型：<?php if($member['banktype']) { ?>对公<?php } else { ?>对私<?php } ?><br/>
收款帐号：<?php echo $member['account'];?><br/>
认证状态：<span class="f_green">已认证</span><br/>
</div>
</div>
<?php } else { ?>
<form method="post" action="?" onsubmit="return check();">
<input type="hidden" name="action" value="<?php echo $action;?>"/>
<div class="ui-form">
<div class="blank-16"></div>
<p>开户银行<em>*</em><b id="dbank"></b></p>
<div><?php echo $bank_select;?></div>
<p>帐号类型<em>*</em><b id="dbanktype"></b></p>
<div>
<input type="radio" name="banktype" value="0"<?php if($member['banktype']==0) { ?> checked<?php } ?> onclick="Dd('name').innerHTML='<?php echo $member['truename'];?>';"/> 对私
<input type="radio" name="banktype" value="1"<?php if($member['banktype']==1) { ?> checked<?php } ?> onclick="Dd('name').innerHTML='<?php echo $member['company'];?>';"/> 对公
</div>
<p>开户网点<em>*</em><b id="dbranch"></b></p>
<div><input type="text" size="50" name="branch" value="<?php echo $member['branch'];?>" id="branch"/></div>
<p>收款户名<em>*</em></b></p>
<div id="name"><?php echo $member['truename'];?></div>
<p>收款帐号<em>*</em><b id="daccount"></b></p>
<div><input type="text" size="30" name="account" value="<?php echo $member['account'];?>" id="account"/></div>
<p>支付密码<em>*</em><b id="dpassword"></b></p>
<div><?php include template('password', 'chip');?></div>
<div class="blank-16"></div>
<input type="submit" name="submit" value="保 存" class="btn-blue"/>
<div class="blank-32"></div>
</div>
</form>
<script type="text/javascript">
function check() {
var f,l;
f = 'bank';
if(Dd(f).value == '') {
Dmsg('请选择开户银行', f);
return false;
}
f = 'branch';
l = Dd(f).value.length;
if(l < 4) {
Dmsg('请填写开户网点', f);
return false;
}
f = 'account';
l = Dd(f).value.length;
if(l < 6) {
Dmsg('请填写收款帐号', f);
return false;
}
f = 'password';
l = Dd(f).value.length;
if(l < 6) {
Dmsg('请填写支付密码', f);
return false;
}
return true;
}
$(function(){
$('#bank').change(function(){
var bank = $('#bank').val();
if(bank == '支付宝') {
$('#branch').val('支付宝（中国）网络技术有限公司');
} else if(bank == '财付通') {
$('#branch').val('深圳市财付通科技有限公司');
} else {
$('#branch').val('');
}
});
});
</script>
<?php } ?>
<?php } else { ?>
<div class="list-tab">
<ul>
<li class="on"><a href="?action=index" data-transition="flip"><span>申请提现</span></a></li>
<li><a href="?action=setting" data-transition="flip"><span>帐号设置</span></a></li>
</ul>
</div>
<?php if($action == 'confirm') { ?>
<form method="post" action="?" onsubmit="return check();">
<input type="hidden" name="action" value="confirm"/>
<input type="hidden" name="amount" value="<?php echo $amount;?>"/>
<div class="main">
<div class="list-set">
<ul>
<li><div><span><?php echo $DT['money_sign'];?><b><?php echo $_money;?></b><?php echo $DT['money_unit'];?></span>账户余额</div></li>
<li><div><span><?php echo $DT['money_sign'];?><?php echo $amount;?><?php echo $DT['money_unit'];?></span>提现金额</div></li>
<li><div><span><?php echo $DT['money_sign'];?><?php echo $fee;?><?php echo $DT['money_unit'];?></span>手续费</div></li>
<li><div><span><?php echo $DT['money_sign'];?><b><?php echo $money;?></b><?php echo $DT['money_unit'];?></span>实收金额</div></li>
</ul>
</div>
<div class="list-inp bd-b">
<div><input type="password" name="password" id="password" placeholder="支付密码：" autocomplete="new-password" onblur="window.scrollTo(0,0);"/></div>
</div>
<div class="blank-20"></div>
<div class="list-btn"><input type="submit" name="submit" value="确认提现" class="btn-green"/></div>
<div class="blank-20"></div>
</div>

</form>
<script type="text/javascript">
function check() {
var f,l;
f = 'password';
l = Dd(f).value.length;
if(l < 6) {
Dmsg('请填写支付密码', f);
return false;
}
return true;
}
</script>
<script type="text/javascript">s('cash');m('action');</script>
<?php } else { ?>
<form method="post" action="?" onsubmit="return check();">
<input type="hidden" name="action" value="confirm"/>
<div class="main">
<div class="list-set">
<ul>
<li><div><span><b><?php echo $_money;?></b><?php echo $DT['money_unit'];?></span>账户余额</div></li>
</ul>
</div>
<div class="list-inp bd-b">
<div><input type="number" name="amount" id="amount" placeholder="提现金额：" onblur="window.scrollTo(0,0);"/></div>
</div>

<div class="content f_gray">
<?php if($MOD['cash_times']) { ?>- 24小时可提现次数<?php echo $MOD['cash_times'];?>次<br/><?php } ?>
<?php if($MOD['cash_min']) { ?>- 单次提现最小金额<?php echo $MOD['cash_min'];?><?php echo $DT['money_unit'];?><br/><?php } ?>
<?php if($MOD['cash_max']) { ?>- 单次提现最大金额<?php echo $MOD['cash_max'];?><?php echo $DT['money_unit'];?><br/><?php } ?>
<?php if($MOD['cash_fee']) { ?>- 提现费率<?php echo $MOD['cash_fee'];?>%<br/><?php } ?>
<?php if($MOD['cash_fee_min']) { ?>- 提现费率最小值<?php echo $MOD['cash_fee_min'];?><?php echo $DT['money_unit'];?><br/><?php } ?>
<?php if($MOD['cash_fee_max']) { ?>- 提现费率封顶值<?php echo $MOD['cash_fee_max'];?><?php echo $DT['money_unit'];?><br/><?php } ?>
</div>
<div class="blank-20"></div>
<div class="list-btn"><input type="submit" value="申请提现" class="btn-green"/></div>
<div class="blank-20"></div>
</div>
</form>
<script type="text/javascript">
function check() {
var f,l;
f = 'amount';
l = Dd(f).value.length;
if(l < 1) {
Dmsg('请填写提现金额', f);
return false;
}
return true;
}
</script>
<?php } ?>
<?php } ?>
<?php include template('footer', 'member');?>