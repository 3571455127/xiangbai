<?php defined('IN_DESTOON') or exit('Access Denied');?><?php include template('header');?>
<div class="pro-cate">
    <div class="procate-top">
        <div class="back-top">
            <a href="<?php echo DT_MOB;?>" title="<?php echo $head_name;?>">
                <i class="iconfont icon-left"></i>
                <span><?php echo $head_name;?></span>
            </a>
        </div>
        <div class="header-search">
            <form action="/mobile/api/search.php" id="dform">
                <input type="hidden" name="mid" value="16" />
                <input type="search" name="kw" placeholder="搜索" id="kw">
                <i class="iconfont icon-seach" onclick="Dsearch();"></i>
            </form>
        </div>
    </div>
    <div class="procate-content main">
        <div class="procate-list" data-ydui-scrolltab>
            <div class="scrolltab-nav">
                <?php $mid = $moduleid;?>
                <?php $child = get_maincat(0, $mid, 1);?>
                <?php if(is_array($child)) { foreach($child as $i => $c) { ?>
                <?php if($i<10 && $c['child']) { ?> <a href="javascript:;" title="<?php echo set_style($c['catname'], $c['style']);?>"
                    class="scrolltab-item crt <?php if($catid==$c['catid']) { ?>active<?php } ?>">
                    <div class="scrolltab-title"><?php echo set_style($c['catname'], $c['style']);?></div>
                    </a>
                    <?php } ?>
                    <?php } } ?>
            </div>
            <div class="scrolltab-content">
                <?php if(is_array($child)) { foreach($child as $i => $c) { ?>
                <?php if($i<10 && $c['child']) { ?> <?php $sub=get_maincat($c['catid'], $mid, 1);?> <div class="scrolltab-content-item"
                    data-ydui-slider>
                    <?php if(is_array($sub)) { foreach($sub as $j => $s) { ?>
                    <a href="<?php echo $MODULE[$mid]['linkurl'];?><?php echo $s['linkurl'];?>" title="<?php echo $s['catname'];?>">
                        <div class="box-img">
                            <img class="lazyload" src="<?php echo DT_MOB;?>static/xb/images/proc01.png" data-src="<?php echo $s['thumb'];?>"
                                alt="<?php echo $s['catname'];?>">
                        </div>
                        <h5><?php echo set_style($s['catname'], $c['style']);?></h5>
                    </a>
                    <?php } } ?>
            </div>
            <?php } ?>
            <?php } } ?>
        </div>
        <!-- 修改后 -->
        <!-- <div class="procate-list2">
            <ul class="nav nav-tabs" role="tablist">
                <li class="active"><a href="#home" data-toggle="tab">法国 布根地</a></li>
                <li><a href="#profile" data-toggle="tab">法国 波尔多</a></li>
            </ul>
            <div class="tab-content">
                <div class="tab-pane active" id="home">
                 
                    <a href="" title="">
                        <div class="box-img">
                            <img class="lazyload" src="http://xiangbai.com/mobile/static/xb/images/proc01.png"
                                data-src="<?php echo $s['thumb'];?>" alt="<?php echo $s['catname'];?>">
                        </div>
                        <h5><?php echo set_style($s['catname'], $c['style']);?></h5>
                    </a>
                   
                    
                    <a href="" title="">
                        <div class="box-img">
                            <img class="lazyload" src="http://xiangbai.com/mobile/static/xb/images/proc02.png"
                                data-src="<?php echo $s['thumb'];?>" alt="<?php echo $s['catname'];?>">
                        </div>
                        <h5><?php echo set_style($s['catname'], $c['style']);?></h5>
                    </a>
                    <a href="" title="">
                        <div class="box-img">
                            <img class="lazyload" src="http://xiangbai.com/mobile/static/xb/images/proc03.png"
                                data-src="<?php echo $s['thumb'];?>" alt="<?php echo $s['catname'];?>">
                        </div>
                        <h5><?php echo set_style($s['catname'], $c['style']);?></h5>
                    </a>
                   
                    <a href="" title="">
                        <div class="box-img">
                            <img class="lazyload" src="http://xiangbai.com/mobile/static/xb/images/proc04.png"
                                data-src="<?php echo $s['thumb'];?>" alt="<?php echo $s['catname'];?>">
                        </div>
                        <h5><?php echo set_style($s['catname'], $c['style']);?></h5>
                    </a>
                    <a href="" title="">
                        <div class="box-img">
                            <img class="lazyload" src="http://xiangbai.com/mobile/static/xb/images/proc01.png"
                                data-src="<?php echo $s['thumb'];?>" alt="<?php echo $s['catname'];?>">
                        </div>
                        <h5><?php echo set_style($s['catname'], $c['style']);?></h5>
                    </a>
                </div>
                <div class="tab-pane" id="profile">456
                </div>
            </div>
        </div> -->
    </div>
</div>
</div>
<?php include template('footer');?>