<?php defined('IN_DESTOON') or exit('Access Denied');?><?php if($share_icon == 'auto') { ?><div class="share_icon"><img src="<?php echo DT_PATH;?>apple-touch-icon-precomposed.png"/></div><?php } ?>
<?php if($foot) { ?>
<div class="foot-bar-fix"></div>
    <!-- footer -->
    <footer>
        <div class="footer-tarbar">
            <a href="<?php echo DT_MOB;?>" title="<?php echo $site_name;?>" class="<?php if($foot=='home') { ?>active<?php } ?>"><i class="iconfont icon-home--line"></i><span>首页</span></a>
            <a href="<?php echo DT_MOB;?>mall/" title="" class="<?php if($foot=='channel') { ?>active<?php } ?>"><i class="iconfont icon-yingyongshangdian_tianchong"></i><span>产品中心</span></a>
            <a href="<?php echo DT_MOB;?>member/cart.php" title="" class="<?php if($foot=='cart') { ?>active<?php } ?>"><i class="iconfont icon-shopping-cart-o"></i><span>购物车</span></a>
            <a href="<?php echo DT_MOB;?>member/" title="" class="<?php if($foot=='my') { ?>active<?php } ?>"><i class="iconfont icon-tubiao--copy"></i><span>我的</span></a>
        </div>
    </footer>
<!-- js -->
<script type="text/javascript" src="<?php echo DT_MOB;?>static/xb/js/all.js"></script>
<script type="text/javascript" src="<?php echo DT_MOB;?>static/xb/js/bootstrap.min.js"></script>
<!-- iOS 系统下默认的 click 事件会有300毫秒的延迟，可以使用 fastclick 来消除这个延迟。 -->
<script type="text/javascript" src="<?php echo DT_MOB;?>static/xb/js/fastclick.js"></script>
<script type="text/javascript" src="<?php echo DT_MOB;?>static/xb/js/jquery-weui.min.js"></script>
<script type="text/javascript" src="<?php echo DT_MOB;?>static/xb/js/lazyload.min.js"></script>
<script type="text/javascript" src="<?php echo DT_MOB;?>static/xb/js/swiper.min.js"></script>
<script type="text/javascript" src="<?php echo DT_MOB;?>static/xb/js/main.js"></script>
<!--<script type="text/javascript" src="<?php echo DT_MOB;?>static/lib/jquery/jquery.mobile.custom.min.js"></script>-->

<?php } ?>

<?php if($DT_MOB['browser'] == 'weixin' || $DT_MOB['browser'] == 'qq') { ?>
<script type="text/javascript">
$(document).on('pageshow', function(event) {
$("[data-role='page']").each(function(i) {
if($(this).attr('class').indexOf('-active') != -1) {
$(this).find('.share_icon img').css('display', 'block');
} else {
$(this).find('.share_icon img').css('display', 'none');
}
});
});
</script>
</div>
<script src="https://res2.wx.qq.com/open/js/jweixin-1.6.0.js"></script>
<?php
//获取微信分享配置
$wxjsconfig = get_signature();
?>
<script type="text/javascript">

  wx.config({
      debug: false,
      appId: '<?php echo $wxjsconfig['appId'];?>',
      timestamp: <?php echo $wxjsconfig['timestamp'];?>,
      nonceStr: '<?php echo $wxjsconfig['nonceStr'];?>',
      signature: '<?php echo $wxjsconfig['signature'];?>',
      jsApiList: [
        'checkJsApi',
        'onMenuShareTimeline',
        'onMenuShareAppMessage',
        'updateAppMessageShareData',
        'updateTimelineShareData',
        'onMenuShareWeibo',
        'openCard'
      ]
  });
  
wx.ready(function () {
      
  // 1 判断当前版本是否支持指定 JS 接口，支持批量判断
//  document.querySelector('#checkJsApi').onclick = function () {
//    wx.checkJsApi({
//      jsApiList: [
//        'getNetworkType',
//        'onMenuShareAppMessage',
//        'updateAppMessageShareData',
//        'updateTimelineShareData',
//        'onMenuShareWeibo',
//        'previewImage'
//      ],
//      success: function (res) {
//        alert(JSON.stringify(res));
//      }
//    });
//  };
//  wx.checkJsApi({
//      jsApiList: [
//        'getNetworkType',
//        'onMenuShareAppMessage',
//        'updateAppMessageShareData',
//        'updateTimelineShareData',
//        'onMenuShareWeibo',
//        'previewImage'
//      ],
//      success: function (res) {
//        alert(JSON.stringify(res));
//      }
//    });
    // 2. 分享接口
  //分享朋友或QQ
   wx.updateAppMessageShareData({ 
    title: '<?php echo $title;?>', // 分享标题
    desc: '<?php echo $introduce;?>', // 分享描述
    link: '<?php echo $linkurl;?>', // 分享链接，该链接域名或路径必须与当前页面对应的公众号JS安全域名一致
    imgUrl: '<?php echo $pic;?>', // 分享图标
    success: function () {
      // 设置成功
//      alert('用户点击发送给朋友2');
    }
  })
  //分享朋友圈或QQ空间
   wx.updateTimelineShareData({ 
    title: '<?php echo $title;?>', // 分享标题
    desc: '<?php echo $introduce;?>', // 分享描述
    link: '<?php echo $linkurl;?>', // 分享链接，该链接域名或路径必须与当前页面对应的公众号JS安全域名一致
    imgUrl: '<?php echo $pic;?>', // 分享图标
    success: function () {
      // 设置成功
    }
  })
  //分享到腾讯微博
  wx.onMenuShareWeibo({
    title: '<?php echo $title;?>', // 分享标题
    desc: '<?php echo $introduce;?>', // 分享描述
    link: '<?php echo $linkurl;?>', // 分享链接，该链接域名或路径必须与当前页面对应的公众号JS安全域名一致
    imgUrl: '<?php echo $pic;?>', // 分享图标
  success: function () {
  // 用户确认分享后执行的回调函数
  },
  cancel: function () {
  // 用户取消分享后执行的回调函数
  }
});

  
});
</script>
<?php } ?>
<script type="text/javascript">
function Dsearch() {
if(Dd('kw').value.length < 2) {
Dtoast('请输入关键词');
return false;
}
Dd('dform').submit();
}
function Dclear() {
$.post('?', {'action':'clear'}, function(data) {
if(data == 'ok') {
Dtoast('清理成功');
setTimeout(function() {
window.location.reload();
}, 1000);
} else {
Dtoast('操作失败');
}
});
}
</script>
</body>
</html>