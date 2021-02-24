<?php defined('IN_DESTOON') or exit('Access Denied');?><?php include template('header', 'member');?>
<link rel="stylesheet" type="text/css" href="<?php echo DT_MOB;?>static/cart.css" />
<?php if($action == 'show') { ?>
<div id="head-bar">
<div class="head-bar">
<div class="head-bar-back">
<a href="<?php echo $back_link;?>" data-direction="reverse"><img src="<?php echo DT_MOB;?>static/img/icon-back.png" width="24"
height="24" /><span>返回</span></a>
</div>
<div class="head-bar-title">提交订单</div>
</div>
<div class="head-bar-fix"></div>
</div>
<div class="ui-ok">
<p>订单提交成功！ </p>
<input type="button" value="支付订单" class="btn-green" onclick="Go('<?php echo $forward;?>');" />
<input type="button" value="继续购物" class="btn" onclick="Go('<?php echo $MOD['mobile'];?>');" />
<meta http-equiv="refresh" content="5;URL=<?php echo $forward;?>" />
</div>
<?php } else { ?>
<div id="head-bar">
<div class="head-bar">
<div class="head-bar-back">
<a href="<?php echo $back_link;?>" data-direction="reverse"><img src="<?php echo DT_MOB;?>static/img/icon-back.png" width="24"
height="24" /><span>返回</span></a>
</div>
<div class="head-bar-title">确认订单</div>
<div class="head-bar-right">
<a href="cart.php"><img src="<?php echo DT_MOB;?>static/img/icon-cart.png" width="24" height="24" /></a>
</div>
</div>
<div class="head-bar-fix"></div>
</div>
<?php if($lists) { ?>
<form method="post" action="buy.php" onsubmit="return check();">
<input type="hidden" name="submit" value="1" />
<input type="hidden" name="mid" value="<?php echo $mid;?>" />
<?php if(is_array($lists)) { foreach($lists as $tags) { ?>
<?php if(is_array($tags)) { foreach($tags as $i => $t) { ?>
<?php if($i == 0) { ?>
<div class="list-seller bd-t bd-b">
<table cellpadding="0" cellspacing="0" width="100%">
<tr>
<td width="16"></td>
<td>
<div><a href="<?php echo userurl($t['username']);?>" target="_blank"><?php echo $t['company'];?></a></div>
</td>
<td class="c3">
<?php $promos = get_promos($t['username']);?>
<?php if($promos) { ?>
<a href="<?php echo $MODULE['2']['mobile'];?>coupon.php?username=<?php echo $t['username'];?>"
target="_blank"><span>&nbsp;&nbsp;领券</span></a>
<?php } ?>
<s id="total-<?php echo $t['username'];?>" data-user="<?php echo $t['username'];?>">0.00</s>
</td>
</tr>
</table>
</div>
<?php $coupons = get_coupons($_username, $t['username']);?>
<?php if($coupons) { ?>
<div class="list-coupon bd-b">
<select name="coupon[<?php echo $t['username'];?>]" id="coupon-<?php echo $t['username'];?>" onchange="calculate();">
<option value="0">我的优惠券</option>
<?php if(is_array($coupons)) { foreach($coupons as $c) { ?>
<option value="<?php echo $c['itemid'];?>" coupon-price="<?php echo $c['price'];?>" coupon-cost="<?php echo $c['cost'];?>">
<?php echo $DT['money_sign'];?><?php echo $c['price'];?><?php if($c['cost']) { ?>，满<?php echo $c['cost'];?>可用<?php } ?></option>
<?php } } ?>
</select>
</div>
<?php } ?>
<?php } ?>
<input type="hidden" id="a1_<?php echo $t['key'];?>" value="<?php echo $t['a1'];?>" />
<input type="hidden" id="a2_<?php echo $t['key'];?>" value="<?php echo $t['a2'];?>" />
<input type="hidden" id="a3_<?php echo $t['key'];?>" value="<?php echo $t['a3'];?>" />
<input type="hidden" id="p1_<?php echo $t['key'];?>" value="<?php echo $t['p1'];?>" />
<input type="hidden" id="p2_<?php echo $t['key'];?>" value="<?php echo $t['p2'];?>" />
<input type="hidden" id="p3_<?php echo $t['key'];?>" value="<?php echo $t['p3'];?>" />
<input type="hidden" id="amount_<?php echo $t['key'];?>" value="<?php echo $t['amount'];?>" />
<input type="hidden" id="fee_start_<?php echo $t['key'];?>_1" value="<?php echo $t['fee_start_1'];?>" />
<input type="hidden" id="fee_step_<?php echo $t['key'];?>_1" value="<?php echo $t['fee_step_1'];?>" />
<input type="hidden" id="fee_start_<?php echo $t['key'];?>_2" value="<?php echo $t['fee_start_2'];?>" />
<input type="hidden" id="fee_step_<?php echo $t['key'];?>_2" value="<?php echo $t['fee_step_2'];?>" />
<input type="hidden" id="fee_start_<?php echo $t['key'];?>_3" value="<?php echo $t['fee_start_3'];?>" />
<input type="hidden" id="fee_step_<?php echo $t['key'];?>_3" value="<?php echo $t['fee_step_3'];?>" />
<div class="list-goods bd-b">
<table cellpadding="0" cellspacing="0" width="100%">
<tr data-key="<?php echo $t['key'];?>">
<td width="16"></td>
<td class="c2"><a href="<?php echo $t['mobile'];?>"><img
src="<?php if($t['thumb']) { ?><?php echo $t['thumb'];?><?php } else { ?>static/img/nopic-60.png<?php } ?>" width="60" height="60"
alt="" onerror="this.src='static/img/nopic-60.png';" /></a></td>
<td>
<p><a href="<?php echo $t['mobile'];?>"><?php echo $t['alt'];?></a></p>
<b>品牌:<?php if($t['brand']) { ?><?php echo $t['brand'];?><?php } else { ?>未填写<?php } ?>&nbsp;<?php if($t['m1']) { ?><?php echo $t['n1'];?>:<?php echo $t['m1'];?>&nbsp;<?php } ?><?php if($t['m2']) { ?><?php echo $t['n2'];?>:<?php echo $t['m2'];?>&nbsp;<?php } ?><?php if($t['m3']) { ?><?php echo $t['n3'];?>:<?php echo $t['m3'];?>&nbsp;<?php } ?></b>
<div>
<table cellpadding="0" cellspacing="0" width="100%">
<tr>
<td><em><?php echo $DT['money_sign'];?><span id="price_<?php echo $t['key'];?>"><?php echo $t['price'];?></span><?php if(isset($t['unit']) && $t['unit']) { ?>/<?php echo $t['unit'];?><?php } ?></em></td>
<td class="a1" onclick="alter('<?php echo $t['key'];?>', '-');">-</td>
<td class="a2"><input type="tel" name="post[<?php echo $t['key'];?>][number]" value="<?php echo $t['a'];?>"
id="number_<?php echo $t['key'];?>" onblur="calculate();" /></td>
<td class="a3" onclick="alter('<?php echo $t['key'];?>', '+');">+</td>
</tr>
</table>
</div>
<s id="total_<?php echo $t['key'];?>" total-<?php echo $t['username'];?>="1">0.00</s>
</td>
</tr>
</table>
</div>
<div class="list-pars bd-b">
<em>运费：<span id="fee_<?php echo $t['key'];?>">0.00</span></em>
<select name="post[<?php echo $t['key'];?>][express]" id="express_<?php echo $t['key'];?>" onchange="calculate();">
<?php if($t['express_name_1'] == '包邮') { ?>
<?php if($t['fee_start_1']>0) { ?>
<?php if($t['fee_start_2']>0) { ?><option value="2" data-2><?php echo $t['express_name_2'];?></option><?php } ?>
<?php if($t['fee_start_3']>0) { ?><option value="3" data-3><?php echo $t['express_name_3'];?></option><?php } ?>
<option value="-1" data--1>包邮</option>
<?php if($t['fee_start_2']>0 || $t['fee_start_3']>0) { ?>
<?php } else { ?>
<option value="0" data-0>联系卖家</option>
<?php } ?>
<?php } else { ?>
<option value="0" data-0>包邮</option>
<?php } ?>
<?php } else if($t['fee_start_1']>0 || $t['fee_start_2']>0 || $t['fee_start_3']>0) { ?>
<?php if($t['fee_start_1']>0) { ?><option value="1"><?php echo $t['express_name_1'];?></option><?php } ?>
<?php if($t['fee_start_2']>0) { ?><option value="2"><?php echo $t['express_name_2'];?></option><?php } ?>
<?php if($t['fee_start_3']>0) { ?><option value="3"><?php echo $t['express_name_3'];?></option><?php } ?>
<?php } else { ?>
<option value="0">联系卖家</option>
<?php } ?>
</select>
<?php if($t['express_name_1'] == '包邮' && $t['fee_start_1']>0) { ?> <span>满<?php echo $t['fee_start_1'];?>包邮</span><?php } ?>
<?php if($t['cod']) { ?> <input type="checkbox" name="post[<?php echo $t['key'];?>][cod]" value="1" checked<?php if($t['cod']==1) { ?> disabled<?php } ?>/>
<span>货到付款</span><?php } ?>
</div>
<div class="list-pars bd-b">
<input type="text" name="post[<?php echo $t['key'];?>][note]" value="" maxlength="100" placeholder="备注：限100字以内"
class="pars-note" />
</div>
<?php } } ?>
<?php } } ?>
<div class="blank-20"></div>
<span id="total_good" style="display:none;"><?php echo $num;?></span>
<div class="list-set">
<ul>
<li>
<div><span id="total_price"></span>总价</div>
</li>
<li>
<div><span id="total_discount"></span>优惠</div>
</li>
<li>
<div><span id="total_amount" style="color:red;font-size:16px;font-weight:bold;"></span>实付</div>
</li>
</ul>
</div>
<div class="pars-tips">提示：实际的运费可能因为收货地址的不同而有差异，具体以提交之后系统计算或与卖家协商为准</div>
<div class="blank-20"></div>
<div class="ui-form">
<p>收货地址<em>*</em><b><a href="<?php echo $MODULE['2']['mobile'];?>address.php" class="b">管理</a></b></p>
<div>
<select name="addr" id="addr_0" onchange="Adr(this.value);">
<?php if(is_array($address)) { foreach($address as $k => $v) { ?>
<option value="<?php echo $v['areaid'];?>|<?php echo $v['street'];?>|<?php echo $v['postcode'];?>|<?php echo $v['truename'];?>|<?php echo $v['mobile'];?>"><?php echo $v['address'];?>
(<?php echo $v['truename'];?>) <?php echo $v['mobile'];?></option>
<?php } } ?>
</select>
</div>
<p>所在地区<em>*</em><b id="dareaid"></b></p>
<div><?php echo ajax_area_select('add[areaid]', '请选择', $user['areaid']);?></div>
<p>街道地址<em>*</em><b id="daddress"></b></p>
<div><input type="text" name="add[address]" id="address" value="<?php echo $user['address'];?>" /></div>
<p>邮政编码<em>*</em><b id="dpostcode"></b></p>
<div><input type="tel" name="add[postcode]" id="postcode" value="<?php echo $user['postcode'];?>" style="width:50%;" /></div>
<p>真实姓名<em>*</em><b id="dtruename"></b></p>
<div><input type="text" name="add[truename]" id="truename" value="<?php echo $user['truename'];?>" style="width:50%;" /></div>
<p>手机号码<em>*</em><b id="dmobile"></b></p>
<div><input type="tel" name="add[mobile]" id="mobile" value="<?php echo $user['mobile'];?>" style="width:50%;" /></div>
<div class="blank-16" style="height: 24px;"></div>
<input type="submit" name="submit" value="立即购买" class="btn-blue" style="    background: #c84646;
    position: fixed;
    z-index: 9999;
    bottom: 0px;
    left: 0px;" />
<div class="blank-16"></div>
</div>
</form>
<?php } else { ?>
<div class="main">
<div class="content"><br /><br />
<center>您还没有挑选商品，赶快行动吧！<br />马上去 <a href="<?php echo $MOD['mobile'];?>" class="b">挑选商品</a></center><br /><br />
</div>
</div>
<?php } ?>
<?php } ?>
<?php if(!$_userid) { ?><script type="text/javascript" src="<?php echo DT_STATIC;?>file/script/guest.js"></script><?php } ?>
<script type="text/javascript">
function check() {
if (Dd('total_amount').innerHTML == '0.00') {
alert('订单总额为0.00，请检查商品数量');
window.scroll(0, 0);
return false;
}
var l;
var f;
f = 'areaid_1';
if (Dd(f).value == 0) {
Dmsg('请选择所在地区', 'areaid', 1);
return false;
}
f = 'address';
l = Dd(f).value.length;
if (l < 5) {
Dmsg('请填写街道地址', f);
return false;
}
f = 'postcode';
l = Dd(f).value.length;
if (l < 6) {
Dmsg('请填写邮政编码', f);
return false;
}
f = 'truename';
l = Dd(f).value.length;
if (l < 2) {
Dmsg('请填写真实姓名', f);
return false;
}
f = 'mobile';
l = Dd(f).value.length;
if (l < 11) {
Dmsg('请填写手机号码', f);
return false;
}
return true;
}
function Adr(s) {
var t = s.split('|');
try {
Dd('address').value = t[1];
Dd('postcode').value = t[2];
Dd('truename').value = t[3];
Dd('mobile').value = t[4];
load_area(t[0], 1);
} catch (e) {}
}
{
if $address
}
Adr(Dd('addr_0').value); {
/if}
function alter(i, t) {
if (t == '+') {
var maxa = parseFloat(Dd('amount_' + i).value);
if (maxa && Dd('number_' + i).value >= maxa) return;
Dd('number_' + i).value = parseInt(Dd('number_' + i).value) + 1;
} else {
var mina = parseFloat(Dd('a1_' + i).value);
if (Dd('number_' + i).value <= mina) return;
Dd('number_' + i).value = parseInt(Dd('number_' + i).value) - 1;
}
calculate();
}
function get_price(i) {
if (Dd('a2_' + i).value > 0) {
if (Dd('a3_' + i).value > 1 && parseInt(Dd('number_' + i).value) > parseInt(Dd('a3_' + i).value))
return Dd('p3_' + i).value;
if (Dd('a2_' + i).value > 1 && parseInt(Dd('number_' + i).value) > parseInt(Dd('a2_' + i).value))
return Dd('p2_' + i).value;
}
return Dd('p1_' + i).value
}
function calculate() {
var _good = 0;
$('[data-key]').each(function () {
var num, good, maxa, mina, price;
var key = $(this).attr('data-key');
num = parseInt(Dd('number_' + key).value);
maxa = parseInt(Dd('amount_' + key).value);
mina = parseInt(Dd('a1_' + key).value);
if (num < mina) Dd('number_' + key).value = num = mina;
if (num > maxa) Dd('number_' + key).value = num = maxa;
if (isNaN(num) || num < 0) Dd('number_' + key).value = num = mina;
price = parseFloat(get_price(key));
good = price * num;
var es = $('#express_' + key).html();
if (es.indexOf('data--1') != -1) {
if (good >= parseFloat(Dd('fee_start_' + key + '_1').value)) {
$('#express_' + key).val('-1');
} else {
if (es.indexOf('data-0') != -1) {
$('#express_' + key).val('0');
} else if (es.indexOf('data-2') != -1) {
$('#express_' + key).val('2');
} else if (es.indexOf('data-3') != -1) {
$('#express_' + key).val('3');
}
}
}
if (Dd('express_' + key).value > 0) {
var fee = parseFloat(Dd('fee_start_' + key + '_' + Dd('express_' + key).value).value) +
parseFloat(Dd('fee_step_' + key + '_' + Dd('express_' + key).value).value) * (num - 1);
Dd('fee_' + key).innerHTML = fee.toFixed(2);
Dd('total_' + key).innerHTML = (good + fee).toFixed(2);
_good += fee;
} else {
Dd('fee_' + key).innerHTML = '0.00';
Dd('total_' + key).innerHTML = good.toFixed(2);
}
Dd('price_' + key).innerHTML = price.toFixed(2);
_good += good;
});
var d_c = 0;
var t_a = _good;
$('[data-user]').each(function () {
var user = $(this).attr('data-user');
var t_t = 0;
$('[total-' + user + ']').each(function () {
t_t += parseFloat($(this).html());
});
if ($('#coupon-' + user).val() > 0) {
var c_c = parseFloat($('#coupon-' + user + ' :selected').attr('coupon-cost'));
var c_p = parseFloat($('#coupon-' + user + ' :selected').attr('coupon-price'));
if (c_c) {
if (c_c <= t_t) {
t_t = t_t - c_p;
t_a = t_a - c_p;
d_c += c_p;
} else {
$('#coupon-' + user).val('0');
}
} else {
t_t = t_t - c_p;
t_a = t_a - c_p;
d_c += c_p;
}
}
$(this).html(t_t.toFixed(2));
});
$('#total_price').html(_good.toFixed(2));
$('#total_discount').html(d_c > 0 ? '-' + d_c.toFixed(2) : '0.00');
var salespricea = 0;
{
if $salespricea
}
salespricea = {
$salespricea
};
var t_vh = t_a * (1 - salespricea);
t_a = t_a * salespricea;
$('#total_discount').html(t_vh);
{
/if}
$('#total_amount').html(t_a.toFixed(2));
}
{
if $lists
}
$(function () {
calculate();
});
{
/if}
</script>
<?php if($DT_PC) { ?>
<?php include template('footer');?>
<?php } else { ?>
<?php include template('footer', 'member');?>
<?php } ?>
<style>
.head-bar span{
color:#000;
}
.head-bar-title {
font-size: 16px;
}
.bd-b,
.head-bar,
.list-set,
.list-img,
.list-txt li,
.list-msg li,
.content,
.info,
.user-info,
.list-set div {
border-color: #e2e2e2;
}
.list-goods em,
.list-goods p {
font-size: 14px;
}
.ui-form {
margin-bottom: 40px;
}
.ui-form p {
font-weight: 400;
}
</style>