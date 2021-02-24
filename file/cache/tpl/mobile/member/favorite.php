<?php defined('IN_DESTOON') or exit('Access Denied');?><?php include template('header', 'member');?>
<div id="head-bar">
<div class="head-bar">
<div class="head-bar-back">
<a href="<?php echo $back_link;?>" data-direction="reverse"><img src="<?php echo DT_MOB;?>static/img/icon-back.png" width="24" height="24"/><span>返回</span></a>
</div>
<div class="head-bar-title">收藏<?php if($action=='add') { ?>添加<?php } else if($action=='edit') { ?>修改<?php } else if($action=='show') { ?>详情<?php } else { ?>管理<?php } ?></div>
<div class="head-bar-right">
<?php if($action=='add' || $action=='edit' || $action=='show') { ?>
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
<input type="hidden" name="post[style]" value="<?php echo $style;?>"/>
<div class="ui-form">
<p>分类</p>
<div><?php echo $type_select;?></div>
<p>标题<em>*</em><b id="dtitle"></b></p>
<div><input type="text" name="post[title]" id="title" value="<?php echo $title;?>"/></div>
<p>网址<em>*</em><b id="durl"></b></p>
<div><input type="url" name="post[url]" id="url" value="<?php echo $url;?>"/></div>
<p>备注</p>
<div><input type="text" name="post[note]" id="note" value="<?php echo $note;?>"/></div>
<p>排序</p>
<div><input type="tel" name="post[listorder]" id="listorder" value="<?php echo $listorder;?>" style="width:100px;"/></div>
<div class="blank-16"></div>
<input type="submit" name="submit" value="<?php if($action=='edit') { ?>修改<?php } else { ?>添加<?php } ?>" class="btn-blue"/>
<div class="blank-32"></div>
</div>
</form>
<?php } else { ?>
<div class="ui-form sch">
<form action="?">
<div><input type="search" name="kw" value="<?php echo $kw;?>" placeholder="输入关键词搜索"/></div>
</form>
</div>
<form method="post">
<?php if($lists) { ?>
<?php if(is_array($lists)) { foreach($lists as $v) { ?>
<div class="list-img">
<input type="checkbox" name="itemid[]" value="<?php echo $v['itemid'];?>" class="dsn" id="checkbox-<?php echo $v['itemid'];?>"/>
<a href="<?php echo $v['url'];?>" target="_blank"><img src="<?php if($v['thumb']) { ?><?php echo $v['thumb'];?><?php } else { ?><?php echo DT_MOB;?>static/img/60x60.png<?php } ?>" width="60" height="60" alt="" onerror="this.src='<?php echo DT_MOB;?>static/img/60x60.png';"/></a>
<ul>
<li><em class="check" id="check-<?php echo $v['itemid'];?>"></em><a href="<?php echo $v['url'];?>" target="_blank"><strong><?php echo $v['title'];?></strong></a></li>
<li><em class="sheet" id="sheet-<?php echo $v['itemid'];?>"></em><span><a href="?typeid=<?php echo $v['typeid'];?>"><?php echo $v['type'];?></a></span></li>
</ul>
</div>
<?php } } ?>
<?php } ?>
<?php if($pages) { ?><div class="pages"><?php echo $pages;?></div><?php } ?>
<div id="foot-bar" class="dsn">
<div class="foot-bar-fix"></div>
<div class="foot-bar btns">
<input type="submit" name="submit" value="删除选中" class="btn-red" onclick="if(confirm('确定要删除选中收藏吗？')){this.form.action='?action=delete'}else{return false;}"/>
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
if(Dd('title').value.length < 2) {
Dmsg('请填写标题', 'title');
return false;
}
if(Dd('url').value.length < 12) {
Dmsg('请填写网址', 'url');
return false;
}
return true;
}
</script>
<?php } ?>
<?php include template('footer', 'member');?>