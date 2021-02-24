<?php defined('IN_DESTOON') or exit('Access Denied');?><?php include template('header');?>
<div id="head-bar">
<div class="head-bar">
<div class="head-bar-back">
<a href="<?php echo $back_link;?>" data-direction="reverse">
<!-- <img src="<?php echo DT_MOB;?>static/img/icon-back.png" width="24"
height="24" /> -->
<img src="<?php echo DT_MOB;?>static/img/icon-left.png" width="24"
height="24" />
<span>返回</span></a>
</div>
<div class="head-bar-title">修改资料</div>
<div class="head-bar-right">
<a href="index.php"><span>取消</span></a>
</div>
</div>
<div class="head-bar-fix"></div>
</div>
<script type="text/javascript" src="<?php echo DT_MOB;?>static/lib/webuploader.min.js"></script>
<form method="post" action="?" onsubmit="return Dcheck();" id="dform">
<input type="hidden" name="post[areaid]" id="areaid" value="<?php if($areaid) { ?><?php echo $areaid;?><?php } else { ?>1<?php } ?>" />
<input type="hidden" name="tab" id="tab" value="<?php echo $tab;?>" />
<div class="blank-32"></div>
<div class="list-set" id="Tab0" onclick="$('#Tabs0').slideToggle('fast');$('#tab').val(0);">
<ul>
<!--<li><div><span><?php echo $_username;?></span><b>个人资料</b></div></li>-->
</div>
<div class="ui-form " id="Tabs0">
<!--<p>邮件</p>
<div><?php echo $_email;?><?php if($DT['mail_type'] != 'close') { ?>&nbsp;&nbsp;<a href="send.php?action=email" class="b">修改</a><?php } ?></div>-->
<div class="mi-content">
<div class="mi-box">
                <span class="mi-left">头像</span>
                <span class="mi-right">
                    <div class="box-img">
                        <img src="/mobile/static/xb/images/ico-avatar.png" alt="">
                    </div>
                    <i class="iconfont icon-_righticon"></i>
                </span>
            </div>
<div class="mi-box">
                <span class="mi-left">会员等级</span>
                <span class="mi-right">铂金会员</span>
            </div>
<div class="mi-box">
                <span class="mi-left">昵称</span>
                <span class="mi-right">
<input type="text" name="" value="Kate">
</span>
            </div>
<div class="mi-box">
                <!-- <span class="mi-left">姓名</span> -->
<!-- <div class="mi-left"><input type="text" name="" value="季欣"></div> -->

<?php if($vtruename) { ?>
<span class="mi-left">姓名</span>
<div class="mi-left"><input type="hidden" name="post[truename]" id="truename" value="<?php echo $truename;?>" /><?php echo $truename;?></div>
<?php } else { ?>
<span class="mi-left">姓名<em>*</em><b id="dtruename"></b></span>
<div class="mi-left"><input type="text" name="post[truename]" id="truename" value="<?php echo $truename;?>" /></div>
<?php } ?>

            </div>
<div class="mi-box">
<?php if($vmobile) { ?>
<span class="mi-left">手机号码</span>
<div class="mi-left"><input type="hidden" name="post[mobile]" id="mobile" value="<?php echo $mobile;?>" /><?php echo $mobile;?><?php if($DT['sms']) { ?>&nbsp;&nbsp;<a href="send.php?action=mobile" class="b">修改</a><?php } ?></div>
<?php } else { ?>
<span class="mi-left">手机号码</span>
<div class="mi-left"><input type="tel" name="post[mobile]" id="mobile" value="<?php echo $mobile;?>" /></div>
<?php } ?>
            </div>

<div class="mi-box">
<?php if($vsjcode) { ?>
<span class="mi-left">上级邀请码</span>
<div class="mi-left"><input type="hidden" name="post[sjcode]" id="sjcode" value="<?php echo $sjcode;?>" /><?php echo $sjcode;?></div>
<?php } else { ?>
<span class="mi-left">上级邀请码</span>
<div class="mi-left"><input type="sjcode" name="post[sjcode]" id="sjcode" value="<?php echo $sjcode;?>" /></div>
<?php } ?>
</div>
<?php if($DT['im_wx']) { ?>
<div class="mi-box">
<span class="mi-left">微信</span>
<div class="mi-left"><input type="text" name="post[wx]" id="wx" value="<?php echo $wx;?>" style="width:50%;" /></div>
</div>
<p>微信二维码</p>
<div style="overflow: hidden;padding-bottom: 15px;">
<input type="hidden" name="post[wxqr]" id="wxqr" value="<?php echo $wxqr;?>" />
<div class="ui-form-thumb-show" id="wxqr-show" onclick="wxqr_action();"></div>
<div class="ui-form-thumb-upload" id="wxqr-upload">
<div id="wxqr-picker"></div>
</div>
<script type="text/javascript">
function wxqr_action() {
Dsheet('<a href="javascript:wxqr_delete();"><span style="color:red;">删除图片</span></a>', '取消', '确定要删除图片吗？');
}
function wxqr_delete() {
$('#wxqr').val('');
$('#wxqr-show').html('');
$('#wxqr-show').hide();
$('#wxqr-upload').show();
}

function wxqr_show(url) {
$('#wxqr').val(url);
$('#wxqr-show').html('<img src="' + url + '"/>');
$('#wxqr-show').show();
$('#wxqr-upload').hide();
}

var wxqru = WebUploader.create({
auto: true,
server: '<?php echo DT_MOB;?>upload.php?moduleid=<?php echo $moduleid;?>&action=webuploader&from=thumb&width=128&height=128',
pick: '#wxqr-picker',
accept: {
title: 'Images',
extensions: 'gif,jpg,jpeg,bmp,png',
mimeTypes: 'image/*'
},
resize: false
});

wxqru.on('fileQueued', function (file) {
Dtoast('上传中..', '', 30);
});

wxqru.on('uploadProgress', function (file, percentage) {
var p = parseInt(percentage * 100);
$('.ui-toast').html(p > 99 ? '处理中...' : '上传中...' + p + '%');
});

wxqru.on('uploadSuccess', function (file, data) {
if (data.error) {
Dtoast(data.message, '', 5);
} else {
wxqr_show(data.url);
}
});

wxqru.on('uploadError', function (file, data) {
Dtoast(data.message, '', 5);
});

wxqru.on('uploadComplete', function (file) {
$('.ui-toast').hide();
});

<?php if($wxqr) { ?>
$(function () {
wxqr_show('<?php echo $wxqr;?>');
});
<?php } ?>
</script>
</div>
<?php } ?>

</div>


<!-- <?php if($vtruename) { ?>
<p>姓名</p>
<div><input type="hidden" name="post[truename]" id="truename" value="<?php echo $truename;?>" /><?php echo $truename;?></div>
<?php } else { ?>
<p>姓名<em>*</em><b id="dtruename"></b></p>
<div><input type="text" name="post[truename]" id="truename" value="<?php echo $truename;?>" /></div>
<?php } ?> 
<?php if($vmobile) { ?>
<p>手机</p>
<div><input type="hidden" name="post[mobile]" id="mobile" value="<?php echo $mobile;?>" /><?php echo $mobile;?><?php if($DT['sms']) { ?>&nbsp;&nbsp;<a href="send.php?action=mobile" class="b">修改</a><?php } ?></div>
<?php } else { ?>
<p>手机</p>
<div><input type="tel" name="post[mobile]" id="mobile" value="<?php echo $mobile;?>" /></div>
<?php } ?>
<?php if($vsjcode) { ?>
<p>上级邀请码</p>
<div><input type="hidden" name="post[sjcode]" id="sjcode" value="<?php echo $sjcode;?>" /><?php echo $sjcode;?></div>
<?php } else { ?>
<p>上级邀请码</p>
<div><input type="sjcode" name="post[sjcode]" id="sjcode" value="<?php echo $sjcode;?>" /></div>
<?php } ?>
-->
<!-- <?php if($DT['im_qq']) { ?>
<p>QQ</p>
<div><input type="tel" name="post[qq]" id="qq" value="<?php echo $qq;?>" style="width:50%;" /></div>
<?php } ?> -->
<!-- <?php if($DT['im_wx']) { ?>
<p>微信</p>
<div><input type="text" name="post[wx]" id="wx" value="<?php echo $wx;?>" style="width:50%;" /></div>
<p>微信二维码</p>
<div>
<input type="hidden" name="post[wxqr]" id="wxqr" value="<?php echo $wxqr;?>" />
<div class="ui-form-thumb-show" id="wxqr-show" onclick="wxqr_action();"></div>
<div class="ui-form-thumb-upload" id="wxqr-upload">
<div id="wxqr-picker"></div>
</div>
<script type="text/javascript">
function wxqr_action() {
Dsheet('<a href="javascript:wxqr_delete();"><span style="color:red;">删除图片</span></a>', '取消', '确定要删除图片吗？');
}
function wxqr_delete() {
$('#wxqr').val('');
$('#wxqr-show').html('');
$('#wxqr-show').hide();
$('#wxqr-upload').show();
}
function wxqr_show(url) {
$('#wxqr').val(url);
$('#wxqr-show').html('<img src="' + url + '"/>');
$('#wxqr-show').show();
$('#wxqr-upload').hide();
}
var wxqru = WebUploader.create({
auto: true,
server: '<?php echo DT_MOB;?>upload.php?moduleid=<?php echo $moduleid;?>&action=webuploader&from=thumb&width=128&height=128',
pick: '#wxqr-picker',
accept: {
title: 'Images',
extensions: 'gif,jpg,jpeg,bmp,png',
mimeTypes: 'image/*'
},
resize: false
});
wxqru.on('fileQueued', function (file) {
Dtoast('上传中..', '', 30);
});
wxqru.on('uploadProgress', function (file, percentage) {
var p = parseInt(percentage * 100);
$('.ui-toast').html(p > 99 ? '处理中...' : '上传中...' + p + '%');
});
wxqru.on('uploadSuccess', function (file, data) {
if (data.error) {
Dtoast(data.message, '', 5);
} else {
wxqr_show(data.url);
}
});
wxqru.on('uploadError', function (file, data) {
Dtoast(data.message, '', 5);
});
wxqru.on('uploadComplete', function (file) {
$('.ui-toast').hide();
});
<?php if($wxqr) { ?>
$(function () {
wxqr_show('<?php echo $wxqr;?>');
});
<?php } ?>
</script>
</div>
<?php } ?>
<div class="blank-16"></div> -->
</div>
<div class="blank-32"></div>
<div class="list-set" id="Tab1" onclick="$('#Tabs1').slideToggle('fast');$('#tab').val(1);">
<ul>
<li>
<div><span>修改密码</span><b>密码管理</b></div>
</li>
</div>
<div class="ui-form pw" id="Tabs1">
<p>新登录密码<b id="dpassword"></b></p>
<div><input type="password" name="post[password]" id="password" onblur="validator('password');"
autocomplete="off" /></div>
<p>重复登录密码<b id="dcpassword"></b></p>
<div><input type="password" name="post[cpassword]" id="cpassword" autocomplete="off" /></div>
<p>现有密码<b id="doldpassword"></b></p>
<div><input type="password" name="post[oldpassword]" id="oldpassword" autocomplete="off" /></div>
<p>新支付密码<b id="dpayword"></b></p>
<div><input type="password" name="post[payword]" id="payword" onblur="validator('payword');"
autocomplete="off" /></div>
<p>重复支付密码<b id="dcpassword"></b></p>
<div><input type="password" name="post[cpayword]" id="cpayword" autocomplete="off" /></div>
<p>现有支付密码<b id="doldpayword"></b></p>
<div><input type="password" name="post[oldpayword]" id="oldpayword" autocomplete="off" /></div>
<div class="blank-16"></div>
<a href="send.php" class="b">找回支付密码</a>
<div class="blank-16"></div>
</div>
<?php if($need_captcha) { ?>
<div class="ui-form">
<p>验证码<em>*</em><b id="dcaptcha"></b></p>
<div><?php include template('captcha', 'chip');?></div>
<div class="blank-20"></div>
</div>
<?php } ?>
<div class="blank-32"></div>
<div style="padding:16px;"><input type="submit" name="submit" value="保 存" class="btn-green" /></div>
<div class="blank-32"></div>
</form>
<script type="text/javascript">
function Tab(id) {
$('#Tabs' + id).slideDown('fast');
}
$(function () {
Tab({});
<?php if(isset($success)) { ?>
Dtoast('资料保存成功');
<?php } ?>
});
</script>
<?php echo load('clear.js');?>
<script type="text/javascript">
function check_mode(c, m) {
if ($('#com_mode input:checkbox:checked').length > m) {
confirm('最多可选' + m + '种经营模式');
c.checked = false;
}
}
function cate_del(id) {
$('#cate-' + id).remove();
var cids = $('#catid').val().replace(',' + id + ',', ',');
$('#catid').val(cids);
if ($('#cate-box').html().indexOf('span') == -1) {
$('#cate-tip').show();
} else {
$('#cate-tip').hide();
}
}
function cate_add(max) {
if ($('#cate-box div').length > max) {
Dmsg('最多可以添加' + max + '个行业', 'catid');
return;
}
var cid = $('#catid_1').val();
if (cid == 0) {
Dmsg('请选择行业', 'catid');
return;
}
if ($('#cate-box').html().indexOf('cate-' + cid) != -1) {
Dmsg('所选行业已经存在', 'catid');
return;
}
var str = '';
$('#cate option:selected').each(function () {
if ($(this).val()) str += $(this).text() + '/';
});
if (str) {
str = str.replace('&amp;', '&');
str = str.replace('请选择行业/', '');
str = str.substring(0, str.length - 1);
$('#cate-box').append('<div id="cate-' + cid + '"><span><a href="javascript:cate_del(' + cid +
');" class="b">删除</a></span>' + str + '</div>');
var cids = $('#catid').val() ? $('#catid').val() + cid + ',' : ',' + cid + ',';
$('#catid').val(cids);
$('#cate-tip').hide();
} else {
Dmsg('请选择行业', 'catid');
}
}
var vid = '';
function validator(id) {
if (!Dd(id).value) return false;
vid = id;
$.post(AJPath, 'moduleid=<?php echo $moduleid;?>&action=member&job=' + id + '&value=' + Dd(id).value + '&userid=<?php echo $userid;?>',
function (data) {
Dd('d' + vid).innerHTML = data ? data : '';
});
}
function Dcheck() {
if (Dd('truename').value == '') {
Tab(0);
Dmsg('请填写真实姓名', 'truename');
return false;
}
if (Dd('password').value.length > 5) {
if (Dd('cpassword').value == '') {
Tab(1);
Dmsg('请重复输入密码', 'cpassword');
return false;
}
if (Dd('password').value != Dd('cpassword').value) {
Tab(1);
Dmsg('两次输入的密码不一致', 'password');
return false;
}
if (Dd('oldpassword').value.length < 6) {
Tab(1);
Dmsg('请输入密码', 'oldpassword');
return false;
}
}
if (Dd('payword').value.length > 5) {
if (Dd('cpayword').value == '') {
Tab(1);
Dmsg('请重复输入支付密码', 'cpayword');
return false;
}
if (Dd('payword').value != Dd('cpayword').value) {
Tab(1);
Dmsg('两次输入的支付密码不一致', 'payword');
return false;
}
if (Dd('oldpayword').value.length < 6) {
Tab(1);
Dmsg('请输入支付密码', 'oldpayword');
return false;
}
}
<?php if($MFD) { ?> 
<?php echo fields_js($MFD);?>
<?php } ?><?php if($is_company) { ?>
<?php if($CFD) { ?> 
<?php echo fields_js($CFD);?> 
<?php } ?><?php } ?>
<?php if($need_captcha) { ?>
f = 'captcha';
if ($('#c' + f).html().indexOf('ok.png') == -1) {
Dmsg('请填写正确的验证码', f);
return false;
}
<?php } ?>return true;}
</script>
<?php include template('footer');?>
<style>
.head-bar img{
margin-top: 12px;
padding: 0;
}
.head-bar span{
color:#333;
}
.head-bar-title{
font-weight: 400;
}
.blank-32{
height: 1px;
}
form .list-set{
border: none;
}
.head-bar{
border-color:#dfdfdf ;
/* border:none; */
}
 .mi-content .mi-box {
    border-bottom: 1px solid #dfdfdf;
    padding: 10px 0;
    display: flex;
    align-items: center;
    justify-content: space-between;
    font-size: 16px;
}
.mi-content .mi-box .mi-right {
    display: flex;
    align-items: center;
    color: #888;
    justify-content: space-between;
}
.mi-content .mi-box .mi-right .box-img{
width: 60px;
    height: 60px;
    box-sizing: border-box;
    display: -webkit-box;
    display: -webkit-flex;
    display: flex;
    overflow: hidden;
    align-items: center;
    justify-content: center;
    border-radius: 50%;
    z-index: 1;
}
.mi-content .mi-box .mi-right .box-img img{
border-radius: 50%;
}
.mi-content .mi-box .mi-right i {
    font-size: 20px;
    margin-left: 10px;
    color: #888;
}
.ui-form{
padding: 0 15px;
}
.mi-content .mi-box input{
border: 0;
text-align: right;
color: #888;
font-size: 16px;
}
.ui-form p{
font-weight: 400;
font-size: 16px;
}
.pw p{
text-align: center;
}
</style>