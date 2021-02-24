<?php defined('IN_DESTOON') or exit('Access Denied');?><?php include template('header', 'member');?>
<div id="head-bar">
<div class="head-bar">
<div class="head-bar-back">
<a href="<?php echo $back_link;?>" data-direction="reverse"><img src="<?php echo DT_MOB;?>static/img/icon-back.png" width="24" height="24"/><span>返回</span></a>
</div>
<div class="head-bar-title">地址<?php if($action=='add') { ?>添加<?php } else if($action=='edit') { ?>修改<?php } else { ?>管理<?php } ?></div>
<div class="head-bar-right">
<?php if($action=='add' || $action=='edit') { ?>
<a href="?action=index"><span>取消</span></a>
<?php } else { ?>
<a href="?action=add"><span>添加</span></a>
<?php } ?>
</div>
</div>
<div class="head-bar-fix"></div>
</div>
<?php if($action=='add' || $action=='edit') { ?>
<form method="post" action="?" id="dform" onsubmit="return check();">
<input type="hidden" name="action" value="<?php echo $action;?>"/>
<input type="hidden" name="itemid" value="<?php echo $itemid;?>"/>
<input type="hidden" name="forward" value="<?php echo $forward;?>"/>
<div class="ui-form">
<p>所在地区<em>*</em><b id="dareaid"></b></p>
<div><?php echo ajax_area_select('post[areaid]', '请选择', $areaid);?></div>
<p>详细地址<em>*</em><b id="dtitle"></b></p>
<div><input type="text" name="post[address]" id="title" value="<?php echo $address;?>"/></div>
<p>邮政编码<em>*</em><b id="dpostcode"></b></p>
<div><input type="tel" name="post[postcode]" id="postcode" value="<?php echo $postcode;?>" style="width:100px;"/></div>
<p>真实姓名<em>*</em><b id="dtruename"></b></p>
<div><input type="text" name="post[truename]" id="truename" value="<?php echo $truename;?>" style="width:100px;"/></div>
<p>手机号码<em>*</em><b id="dmobile"></b></p>
<div><input type="tel" name="post[mobile]" id="mobile" value="<?php echo $mobile;?>" style="width:200px;"/></div>
<p>电话号码</p>
<div><input type="tel" name="post[telephone]" id="telephone" value="<?php echo $telephone;?>" style="width:200px;"/></div>
<p>显示顺序</p>
<div><input type="tel" name="post[listorder]" id="listorder" value="<?php echo $listorder;?>" style="width:100px;"/></div>
<div class="blank-16"></div>
<input type="submit" name="submit" value="<?php if($action=='edit') { ?>修改<?php } else { ?>添加<?php } ?>" class="btn-blue"/>
<div class="blank-32"></div>
</div>
</form>
<?php } else { ?>
<form method="post">
<?php if($lists) { ?>
<?php if(is_array($lists)) { foreach($lists as $v) { ?>
<div class="list-img">
<input type="checkbox" name="itemid[]" value="<?php echo $v['itemid'];?>" class="dsn" id="checkbox-<?php echo $v['itemid'];?>"/>
<ul>
<li><em class="check" id="check-<?php echo $v['itemid'];?>"></em><a href="?action=edit&itemid=<?php echo $v['itemid'];?>"><strong><?php echo $v['address'];?></strong></a></li>
<li><em class="sheet" id="sheet-<?php echo $v['itemid'];?>"></em><span><?php echo $v['truename'];?> <?php echo $v['mobile'];?></span></li>
</ul>
</div>
<?php } } ?>
<?php } ?>
<?php if($pages) { ?><div class="pages"><?php echo $pages;?></div><?php } ?>
<div id="foot-bar" class="dsn">
<div class="foot-bar-fix"></div>
<div class="foot-bar btns">
<input type="submit" name="submit" value="删除选中" class="btn-red" onclick="if(confirm('确定要删除选中地址吗？')){this.form.action='?action=delete'}else{return false;}"/>
</div>
</div>
</form>
<script type="text/javascript">
$(function(){
if($('#foot-bar input').length == 0) $('.check').hide();
$('.list-img em').click(function() {
if($(this).attr('class') == 'sheet') {
var id = $(this).attr('id').replace('sheet-', '');
Dsheet('<a href="?action=edit&itemid='+id+'"><span>修改</span></a>|<a href="?action=delete&itemid='+id+'" onclick="return _delete();"><span style="color:red;">删除</span></a>', '取消');
} else {
var id = $(this).attr('id').replace('check-', '');
if($('#checkbox-'+id).attr('checked')) {
$('#checkbox-'+id).attr('checked', false);
$(this).attr('class', 'check');
} else {
$('#checkbox-'+id).attr('checked', true);
$(this).attr('class', 'checked');
}
if($('.checked').length > 0) {
$('#foot-bar').fadeIn(300);
} else {
$('#foot-bar').fadeOut(300);
}
}
});
});
</script>
<?php } ?>
<?php if($action=='add' || $action=='edit') { ?>
<script type="text/javascript">
function check() {
var l;
var f;
f = 'areaid_1';
if(Dd(f).value == 0) {
Dmsg('请选择所在地区', 'areaid', 1);
return false;
}
f = 'title';
l = Dd(f).value.length;
if(l < 5) {
Dmsg('请填写详细地址', f);
return false;
}
f = 'postcode';
l = Dd(f).value.length;
if(l < 6) {
Dmsg('请填写邮政编码', f);
return false;
}
f = 'truename';
l = Dd(f).value.length;
if(l < 2) {
Dmsg('请填写真实姓名', f);
return false;
}
f = 'mobile';
l = Dd(f).value.length;
if(l < 11) {
Dmsg('请填写手机号码', f);
return false;
}
return true;
}
</script>
<?php } ?>
<?php include template('footer', 'member');?>
<style>
.head-bar span{
color:#000
}
</style>