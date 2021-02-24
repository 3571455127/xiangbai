<?php defined('IN_DESTOON') or exit('Access Denied');?><!DOCTYPE html>
<html lang="cn">

<head>
    <meta charset="UTF-8">
<?php if($head_keywords) { ?>
<meta name="keywords" content="<?php echo $head_keywords;?>"/>
<?php } ?>
<?php if($head_description) { ?>
<meta name="description" content="<?php echo $head_description;?>"/>
<?php } ?>
    <meta http-equiv="X-UA-Compatible" content="IE=Edge,chrome=1">
    <meta name="renderer" content="webkit">
    <meta name="viewport"
        content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0" />
    <meta name="wap-font-scale" content="no" />
    <meta name="apple-mobile-web-app-capable" content="yes" />
    <meta name="format-detection" content="telephone=yes" />
    <meta name="Robots" content="all">
    <meta name="viewport" content="width=device-width,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no">
    <link href="" rel="apple-touch-icon-precomposed">
    <link rel="shortcut icon" href="<?php echo $CFG['url'];?>favicon.ico" type="image/x-icon" />
    <title><?php if($seo_title) { ?>
        <?php echo $seo_title;?>
    <?php } else { ?>
        <?php if($head_name) { ?>
            <?php echo $head_name;?>
         <?php } ?>
         <?php if($city_sitename) { ?>
            <?php echo $city_sitename;?>
         <?php } else { ?>
            <?php echo $site_name;?>
         <?php } ?>
    <?php } ?></title>
    <!-- css -->
<!--<link rel="stylesheet" type="text/css" href="<?php echo DT_MOB;?>static/lib/jquery/jquery.mobile.custom.structure.min.css"/>-->
<link rel="stylesheet" type="text/css" href="<?php echo DT_MOB;?>static/style.css"/>
    <link rel="stylesheet" href="<?php echo DT_MOB;?>static/xb/css/bootstrap.min.css">
    <link rel="stylesheet" href="<?php echo DT_MOB;?>static/xb/css/swiper.min.css">
    <link rel="stylesheet" href="<?php echo DT_MOB;?>static/xb/css/icon-font.css">
    <link rel="stylesheet" href="<?php echo DT_MOB;?>static/xb/css/weui.min.css">
    <link rel="stylesheet" href="<?php echo DT_MOB;?>static/xb/css/jquery-weui.min.css">
    <link rel="stylesheet" href="<?php echo DT_MOB;?>static/xb/css/main.css">
<script type="text/javascript" src="<?php echo DT_MOB;?>static/xb/js/jquery.min.js"></script>
<script type="text/javascript">
$(document).bind("mobileinit", function() {
　　<?php if($EXT['mobile_ajax']) { ?>
$.mobile.defaultPageTransition = 'slide';
<?php } else { ?>
$.mobile.ajaxEnabled = false;
<?php } ?>
});
var Dbrowser = '<?php echo $DT_MOB['browser'];?>',AJPath = '<?php echo DT_MOB;?>ajax.php',DTPath = '<?php echo DT_PATH;?>',DTMob = '<?php echo DT_MOB;?>';
<?php if(!DT_DEBUG) { ?>
if(!('ontouchend' in document) && window.location.href.indexOf('device.php') == -1) window.location='<?php echo DT_MOB;?>api/device.php?uri=<?php echo urlencode($head_pc);?>';
<?php } ?>
</script>
<script type="text/javascript" src="<?php echo DT_MOB;?>static/js/common.js"></script>

</head>
<body>
<div class="ui-toast"></div>
<div class="ui-mask"></div>
<div class="ui-sheet"></div>