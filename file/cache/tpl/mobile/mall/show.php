<?php defined('IN_DESTOON') or exit('Access Denied');?><?php include template('header');?>
    <div class="product-intro main">

        <div style="position:relative">

            <i class="iconfont icon-left" onclick="location.href='<?php echo $back_link;?>'"></i>
            <!--轮播图片 -->
            <div class="preview-wrap">

                <div class="pwbox">
                    <div class="pwsiper">
                        <div class="swiper-container">
                            <div class="swiper-wrapper">
<?php if($thumb && !$thumb1 && !$thumb2) { ?>
                                <div class="swiper-slide">
                                    <div class="box-img">
                                        <img src="<?php echo $thumb;?>" alt="<?php echo $title;?>">
                                    </div>
                                </div>
<?php } ?>
<?php if($thumb1) { ?>
                                <div class="swiper-slide">
                                    <div class="box-img">
                                        <img src="<?php echo $thumb1;?>" alt="<?php echo $title;?>">
                                    </div>
                                </div>
<?php } ?>
<?php if($thumb2) { ?>
                                <div class="swiper-slide">
                                    <div class="box-img">
                                        <img src="<?php echo $thumb2;?>" alt="<?php echo $title;?>">
                                    </div>
                                </div>
<?php } ?>
                            </div>
                        </div>
                        <div class="swiper-pagination"></div>
                    </div>
                    <i class="iconfont icon-icon_clear"></i>
                    <div class="preview-footer">
                        <div class="title"> <?php echo $title;?>
                        </div>
                        <div class="preview-ftxt">
                            <div class="preview-fprice">
                                <?php if($salespricea) { ?>
                                <?php echo $DT['money_sign'];?> <span><?php echo intval($price*$salespricea);?></span>
                                <?php } else { ?>
                                <?php echo $DT['money_sign'];?> <span><?php echo $price;?></span>
                                <?php } ?>
                            </div>
                            <div class="preview-fbtns">
                                <div class="pfbtns-add">加入购物车</div>
                                <div class="pfbtns-pay">立即购买</div>
                            </div>
                        </div>
                    </div>
                </div>



            </div>
            <div class="module-unit">
                <div class="priceSpec">
                    <?php if($salespricea) { ?>
                    <div class="ps-new"><span><?php echo $DT['money_sign'];?></span> <i><?php echo intval($price*$salespricea);?></i></div>
                    <div class="ps-old"><?php echo $DT['money_sign'];?> <?php echo $price;?></div>
                    <?php } else { ?>
                    <div class="ps-new"><span><?php echo $DT['money_sign'];?></span> <i><?php echo $price;?></i></div>
                    <?php } ?>
                </div>
                <div class="proName disflex">
                    <h3><?php echo $title;?></h3>
                    <div class="pro-share disflex open-popup" data-target="#pro-share">
                        <i class="iconfont icon-share1"></i>
                        <span> 分享</span>
                    </div>

                    <!-- 分享弹窗 -->
                    <div id="pro-share" class="weui-popup__container popup-bottom">
                        <div class="weui-popup__overlay"></div>
                        <div class="weui-popup__modal">
                            <div class="sheet__options">
                                <div><img src="<?php echo DT_MOB;?>static/xb/images/share-icon-wechat.png" alt=""><span>微信</span></div>
                                <div><img src="<?php echo DT_MOB;?>static/xb/images/share-icon-link.png" alt=""><span>复制链接</span></div>
                                <div><img src="<?php echo DT_MOB;?>static/xb/images/share-icon-poster.png" alt=""><span>分享海报</span></div>
                            </div>
                            <div class="close-popup">取消</div>
                        </div>
                    </div>
                </div>

                <div class="ps-fare">
                    <span class="left">运费:</span>
                    <span class="txt">
                        <?php if($express_name_1 == '包邮') { ?>
<?php if($fee_start_1>0) { ?>
<?php if($fee_start_2>0) { ?> <?php echo $express_name_2;?>:<?php echo $fee_start_2;?>&nbsp;&nbsp;<?php } ?>
<?php if($fee_start_3>0) { ?> <?php echo $express_name_3;?>:<?php echo $fee_start_3;?>&nbsp;&nbsp;<?php } ?>
满<?php echo $fee_start_1;?>包邮
<?php } else { ?>
包邮
<?php } ?>
                    <?php } else if($fee_start_1>0 || $fee_start_2>0 || $fee_start_3>0) { ?>
<?php if($fee_start_1>0) { ?> <?php echo $express_name_1;?>:<?php echo $fee_start_1;?>&nbsp;&nbsp;<?php } ?>
<?php if($fee_start_2>0) { ?> <?php echo $express_name_2;?>:<?php echo $fee_start_2;?>&nbsp;&nbsp;<?php } ?>
<?php if($fee_start_3>0) { ?> <?php echo $express_name_3;?>:<?php echo $fee_start_3;?>&nbsp;&nbsp;<?php } ?>
<?php } ?>
                    </span>
                </div>
            </div>

            <div class="pro-list">
                <div class="box open-popup" data-target="#pro-service">
                    <span class="left">服务
                    </span>
                    <span class="txt">收货后结算 · 快递发货</span>
                    <i class="iconfont  icon-_righticon "></i>
                </div>
                <!-- 服务说明 -->
                <div id="pro-service" class="weui-popup__container popup-bottom">
                    <div class="weui-popup__overlay"></div>
                    <div class="weui-popup__modal">
                        <div class="content">
                        <?php echo get_val('catid=30', $from = 'cont',DT_PRE.'category');?>
                        </div>
                        <div class="close-popup">
                                我知道了
                        </div>
                    </div>
                </div>
            </div>
            <div class="pro-list">
                <div class="box">
                    <div class="shop disflex">
                        <a href="<?php echo DT_MOB;?>" title=""> <img class="shop-logo" src="<?php echo DT_MOB;?>static/xb/images/logo.jpg" alt=""></a>
                        <div class="shop-top">
                            <h5> <?php echo $site_name;?></h5>

                            <div class="shop-tags">企业认证</div>
                        </div>
                        <div class="shop-content">
                            <a href="<?php echo DT_MOB;?>" class="shop-top-in">进店逛逛</a>
                            <a href="javascript:;" class="open-popup" data-target="#shop-top">关注店铺</a>

                            <!-- 关注店铺弹窗 -->
                            <div id="shop-top" class="weui-popup__container popup-bottom">
                                <div class="weui-popup__overlay"></div>
                                <div class="weui-popup__modal">
                                    <div>
                                        <div class="content">
                        <?php echo get_val('catid=31', $from = 'cont',DT_PRE.'category');?>
                                        </div>
                                        <div class="close-popup">我知道了</div>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- 详情 -->
        <div>
            <h4>产品详情</h4>
            <div class="pro-detail">
                <?php echo $content;?>
            </div>

        </div>

    </div>

    <!-- 底部功能栏 -->
    <div class="goods-buttons disflex">
        <div class="buttions_mini">
            <a href="<?php echo DT_MOB;?>">
                <i class="iconfont icon-home--line"></i>
                <p>首页</p>
            </a>
            <a href="javascript:;"  onclick="Addfavorite(<?php echo $itemid;?>);">
                <i class="iconfont icon-shoucang"></i>
                <p>收藏</p>
            </a>
            <a href="<?php echo DT_MOB;?>member/cart.php">
                <i class="iconfont icon-shopping-cart-o"></i>
                <?php if($_cart) { ?><div class="goods-info"><?php echo $_cart;?></div><?php } ?>
                购物车
            </a>
        </div>
<!--        <button class="button-cart open-popup" data-target="#goods-addCart">
            加入购物车
        </button>-->
<?php if($status == 3 && $amount > 0) { ?>
        <button class="button-cart open-popup"  onclick="AddCart();">
            加入购物车
        </button>
        <button class="button-buy"  onclick="BuyNow();">立即购买</button>
<?php } else { ?>
<button class="button-cart open-popup" style="background: #9a8e8e;">
            加入购物车
        </button>
<button class="button-buy" style="background: #9a8e8e;">库存不足</button>
<?php } ?>
        <!-- 弹出购物车 -->
        <div id="goods-addCart" class="weui-popup__container popup-bottom">
            <div class="weui-popup__overlay"></div>
            <div class="weui-popup__modal">
                <div class="cart-header clearfix">
                    <div class="col-xs-4">
                        <div class="cart-box">
                            <img src="<?php echo DT_MOB;?>static/xb/images/product01.png" alt="">
                        </div>
                    </div>
                    <div class="col-xs-7">
                        <div class="cart-price">
                            <span class="rmb">¥</span>
                            <span class="cart-prices">335.00 - 620.00</span>
                            <div class="specification">请选择 数量</div>
                        </div>
                    </div>
                    <i class="iconfont icon-close-icon picker-button close-popup"></i>
                </div>
                <div class="quantity">
                    <p>数量</p>
                    <div class="quantity-box">
                        <span>单支装</span>
                        <span>双支装</span>
                    </div>
                </div>
                <div class="stock">
                    <div class="pull-left">数量</div>
                    <div class="pull-right">
                        <div class="opera">
                            <span class="sub sub-disabled"></span>
                            <input type="text" class="numchange" value="1">
                            <span class="plus"></span>
                        </div>
                    </div>

                </div>
                <div class="cart-btn">
                    <button class="add close-popup">加入购物车</button>
                </div>
            </div>
        </div>
    </div>

<script type="text/javascript">
    var mallurl = '<?php echo $MOD['mobile'];?>';
var mallmid = <?php echo $moduleid;?>;
var mallid = <?php echo $itemid;?>;
var n_c = <?php echo $comments;?>;
var n_o = <?php echo $orders;?>;
var s_s = {'1':0,'2':0,'3':0};
function BuyNow() {
Go('<?php echo $MODULE['2']['mobile'];?>buy.php?mid=<?php echo $moduleid;?>&itemid=<?php echo $itemid;?>&s1='+s_s[1]+'&s2='+s_s[2]+'&s3='+s_s[3]+'&a=1');
}
function AddCart() {
Go('<?php echo $MODULE['2']['mobile'];?>cart.php?mid=<?php echo $moduleid;?>&itemid=<?php echo $itemid;?>&s1='+s_s[1]+'&s2='+s_s[2]+'&s3='+s_s[3]+'&a=1');
}
function Addfavorite(itemid) {
    var url = '<?php echo $MODULE['2']['mobile'];?>favorite.php';
    $.ajax({
        type:"POST",
        url:url,
        data:'action=add&mid=<?php echo $moduleid;?>&itemid=<?php echo $itemid;?>&ajaxreturn=1',
        dataType:'json',
        success:function(res){
//        alert(res.status);
            if(res.status==1){
    Dmsg('收藏成功！');
            }else if(res.status==2){
    Dmsg('已收藏！');
            }else{
    Dmsg('收藏失败！');
            }
        }
      });
}
</script>
    <!-- gotop -->
    <div class="gotop"><i></i></div>
</body>
<!-- js -->
<script type="text/javascript" src="<?php echo DT_MOB;?>static/xb/js/lazyload.min.js"></script>
<script type="text/javascript" src="<?php echo DT_MOB;?>static/xb/js/bootstrap.min.js"></script>
<!-- iOS 系统下默认的 click 事件会有300毫秒的延迟，可以使用 fastclick 来消除这个延迟。 -->
<script type="text/javascript" src="<?php echo DT_MOB;?>static/xb/js/fastclick.js"></script>
<script type="text/javascript" src="<?php echo DT_MOB;?>static/xb/js/jquery-weui.min.js"></script>
<script type="text/javascript" src="<?php echo DT_MOB;?>static/xb/js/swiper.min.js"></script>
<script type="text/javascript" src="<?php echo DT_MOB;?>static/xb/js/main.js"></script>

</html>