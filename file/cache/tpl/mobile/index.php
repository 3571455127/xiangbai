<?php defined('IN_DESTOON') or exit('Access Denied');?><!DOCTYPE html>
<html lang="cn">

<head>
    <meta charset="UTF-8">
    <meta name="keywords" content="" />
    <meta name="description" content="" />
    <meta http-equiv="X-UA-Compatible" content="IE=Edge,chrome=1">
    <meta name="renderer" content="webkit">
    <?php if($head_keywords) { ?>
<meta name="keywords" content="<?php echo $head_keywords;?>"/>
<?php } ?>
<?php if($head_description) { ?>
<meta name="description" content="<?php echo $head_description;?>"/>
<?php } ?>
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

<script type="text/javascript" src="<?php echo DT_MOB;?>static/js/common.js"></script>
</head>

<body>
<div class="ui-toast"></div>
<div class="ui-mask"></div>
<div class="ui-sheet"></div>
    <!-- header  -->
    <header>
        <div class="shop-topbar">
            <a class="logo" href="" title="">
                <!--<img src="<?php echo DT_MOB;?>static/xb/images/logo.jpg" alt="">--> 
                <img src="<?php if($MODULE[$moduleid]['logo']) { ?><?php echo DT_SKIN;?>image/logo_<?php echo $moduleid;?>.gif<?php } else if($DT['logo']) { ?><?php echo $DT['logo'];?><?php } else { ?><?php echo DT_SKIN;?>image/logo.gif<?php } ?>" alt="<?php echo $DT['sitename'];?>"/>
            </a>
            <h3><?php echo $head_name;?></h3>
<!--            <div class="box">
                <i class="iconfont icon-diandiandian"></i>
                <i class="iconfont icon-yuandian"></i>
            </div>-->
        </div>
        <!-- search -->
        <div class="header-search">
            <form action="/mobile/api/search.php"  id="dform">
                <input type="hidden" name="mid" value="16"/>
                <input type="search" name="kw" placeholder="搜索" id="kw">
                <i class="iconfont icon-seach" onclick="Dsearch();"></i>
            </form>
        </div>
    </header>
<?php $gg1=tag("table=ad&condition=pid=1 and status=3&order=listorder ASC&template=null")?>
    <!-- banner  -->
    <div class="index-banner main">
        <div class="swiper-container">
            <div class="swiper-wrapper">
        <?php if(is_array($gg1)) { foreach($gg1 as $v) { ?>
                <div class="swiper-slide">
<a href='<?php echo $v['url'];?>' title='<?php echo $v['title'];?>'><img src="<?php echo $v['image_src'];?>" alt="<?php echo $v['title'];?>"></a>

                </div>
        <?php } } ?>
            </div>
            <div class="swiper-pagination"></div>
        </div>
    </div>

    <!-- nav -->
    <div class="index-nav main">
       <?php $gg2=tag("table=ad&condition=pid=26 and status=3&order=listorder ASC&template=null")?>
       <?php if(is_array($gg2)) { foreach($gg2 as $v) { ?>
        <a href='<?php echo $v['url'];?>' title='<?php echo $v['title'];?>'>
            <div class="box-img"><img src="<?php echo $v['image_src'];?>" alt="<?php echo $v['title'];?>"></div><span><?php echo $v['title'];?></span>
        </a>
        <?php } } ?>
    </div>

    <!-- index -->
    <div class="index main">
        <div class="index-product">
            <div class="title">
                <p>Producing area</p>
                <h3>产区</h3>
            </div>

            <div class="list">
        <?php $catelist=tag("table=category&condition=moduleid=16 and isshow=1 and parentid=0&order=listorder ASC&template=null")?>
        <?php if(is_array($catelist)) { foreach($catelist as $v) { ?>
                <a href="<?php echo $MODULE[$v['moduleid']]['linkurl'];?><?php echo $v['linkurl'];?>" title="<?php echo $v['catname'];?>">
                    <div class="box-img">
                        <img class="lazyload" src="<?php echo DT_MOB;?>static/xb/images/loading.gif" data-src="<?php echo $v['thumb'];?>" />
                    </div>
                    <div class="txt">
                        <p><?php echo $v['catename'];?></p>
                        <div class="address">
                            <span><?php echo $v['catname'];?></span>
                            <i class="iconfont icon-_righticon"></i>
                        </div>
                    </div>
                </a>
        <?php } } ?>
            </div>
        </div>
    </div>

<?php include template('footer');?>