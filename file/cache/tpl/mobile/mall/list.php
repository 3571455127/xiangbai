<?php defined('IN_DESTOON') or exit('Access Denied');?><?php include template('header');?>    
<!-- product -->
    <div class="product">

        <!-- back -->
        <div class="back-top">
            <a href="<?php echo $back_link;?>" title="<?php echo $head_name;?>">
                <i class="iconfont icon-left"></i>
                <span><?php echo $head_name;?></span>
            </a>
        </div>
        <!-- search -->
        <div class="header-search">
            <form action="/mobile/api/search.php"  id="dform">
                <input type="hidden" name="mid" value="16"/>
                <input type="search" name="kw" placeholder="搜索" id="kw">
                <i class="iconfont icon-seach" onclick="Dsearch();"></i>
            </form>
        </div>

        <div class="main">
            <ul class="nav nav-tabs disflex" role="tablist">
                <li role="presentation" class="active"><a href="#pronav1" role="tab" data-toggle="tab">综合</a></li>
                <li role="presentation"><a href="#pronav2" data-toggle="tab">价格
                        <span class="sort">
                            <i class="iconfont icon-up1"></i>
                            <i class="iconfont icon-down2"></i>
                        </span>
                    </a>
                </li>
                <li role="presentation"><a href="#pronav3" data-toggle="tab">热销排行</a>
                </li>
            </ul>

            <div class="tab-content">

                <div class="tab-pane fade in active" id="pronav1">
                    <div class="main">
                        <div class="pro-content clearfix">
                            <?php if($lists) { ?>
<?php if(is_array($lists)) { foreach($lists as $v) { ?>
<?php if($v['amount']) { ?>
                            <div class="col-xs-6">
                                <div class="box">
                                    <a href="<?php echo $v['linkurl'];?>" title="<?php echo $v['title'];?>">
                                        <div class="box-img">
                                            <img class="lazyload" src="<?php echo DT_MOB;?>static/xb/images/loading.gif"
                                                data-src="<?php echo $v['thumb'];?>" alt="icon">
                                        </div>
                                        <div class="text">
                                            <h3>
                                                <?php echo $v['title'];?>
                                            </h3>
                                        </div>
                                    </a>
                                    <div class="price-box clearfix">
                                        <div class="price pull-left">
                                            <?php if($salespricea) { ?>
                                            <div class="pro-new">
                                                <span><?php echo $DT['money_sign'];?></span><span class="pro-price"><?php echo intval($v['price']*$salespricea);?></span>
                                            </div>
                                            <div class="pro-old"><span><?php echo $DT['money_sign'];?></span><span class="pro-price"><?php echo $v['price'];?></span>
                                            </div>
                                            <?php } else { ?>
                                            <div class="pro-new">
                                                <span><?php echo $DT['money_sign'];?></span><span class="pro-price"><?php echo $v['price'];?></span>
                                            </div>
                                            <?php } ?>
                                        </div>
                                        <div class="pull-right">
                                            <!-- data-target="#addCart" #addCart 根据ID弹出不同的购物车内容 -->   
                                            <!--<a href="javascript:;" class="open-popup" data-target="#addCart">-->
                                            <a href="javascript:;" class="open-popup" onclick="AddCart(<?php echo $v['itemid'];?>);">
                                                <i class="iconfont icon-icon_cart-circle-o"> </i>
                                            </a>

                                        </div>
                                    </div>
                                </div>
                            </div>
<?php } else { ?>
                            <!-- pro-active 该类名表示商品已售罄  点击购物车是弹出“该商品已售罄” 信息-->
                            <div class="pro-active col-xs-6">
                                <div class="box">
                                    <a href="<?php echo $v['linkurl'];?>" title="<?php echo $v['title'];?>">
                                        <div class="box-img">
                                            <img class="lazyload" src="<?php echo DT_MOB;?>static/xb/images/loading.gif"
                                                data-src="<?php echo $v['thumb'];?>" alt="icon">
                                        </div>
                                        <div class="text">
                                            <h3>
                                                <?php echo $v['title'];?><?php echo $salespricea;?>
                                            </h3>
                                        </div>
                                    </a>
                                    <div class="price-box clearfix">
                                        <div class="price pull-left">
                                            <?php if($salespricea) { ?>
                                            <div class="pro-new">
                                                <span><?php echo $DT['money_sign'];?></span><span class="pro-price"><?php echo intval($v['price']*$salespricea);?></span>
                                            </div>
                                            <div class="pro-old"><span><?php echo $DT['money_sign'];?></span><span class="pro-price"><?php echo $v['price'];?></span>
                                            </div>
                                            <?php } else { ?>
                                            <div class="pro-new">
                                                <span><?php echo $DT['money_sign'];?></span><span class="pro-price"><?php echo $v['price'];?></span>
                                            </div>
                                            <?php } ?>
                                        </div>
                                        <div class="pull-right">
                                            <!-- 弹出 该商品已售罄 信息 添加 id="show-toast-text" 移除open-popup类名，data-target=""为空即可 -->
                                            <!-- <a href="javascript:;"id="show-toast-text" class="open-popup" data-target=""></a> -->
                                            <a href="javascript:;" id="show-toast-text" data-target=""><i
                                                    class="iconfont icon-icon_cart-circle-o"> </i></a>
                                        </div>
                                    </div>
                                </div>

                            </div>
<?php } ?>
<?php } } ?>
<?php if($pages) { ?><div class="pages"><?php echo $pages;?></div><?php } ?>
<?php } else { ?>
<?php include template('empty', 'chip');?>
<?php } ?>
                            
                            
                            
                        </div>
                    </div>
                </div>

            </div>

            <!-- 弹出购物车 id="addCart" 根据ID弹出不同的购物车内容  -->
<!--            <div id="addCart" class="product-addcart weui-popup__container popup-bottom">
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
                        <div class="stock-txt">数量</div>
                        <div class="opera">
                            <span class="sub sub-disabled"></span>
                            <input type="text" class="numchange" value="1">
                            <span class="plus"></span>
                        </div>
                    </div>
                    <div class="cart-btn">
                        <button class="add close-popup">加入购物车</button>
                        <button class="buy">立即购买</button>
                    </div>
                </div>
            </div>-->

            <!-- 弹出购物车2 -->
<!--            <div id="addCart2" class="product-addcart weui-popup__container popup-bottom">
                <div class="weui-popup__overlay"></div>
                <div class="weui-popup__modal">
                    <div class="cart-header clearfix">
                        <div class="col-xs-4">
                            <div class="cart-box">
                                <img src="<?php echo DT_MOB;?>static/xb/images/pro-cart.webp" alt="">
                            </div>
                        </div>
                        <div class="col-xs-7">
                            <div class="cart-price">
                                <span class="rmb">¥</span>
                                <span class="cart-prices">1590</span>
                            </div>
                        </div>
                        <i class="iconfont icon-close-icon picker-button close-popup"></i>
                    </div>
                    <div class="stock">
                        <div class="pull-left">数量</div>
                        <div class="pull-right">
                            <div class="weui-count">
                                <a class="weui-count__btn weui-count__decrease"></a>
                                <input class="weui-count__number" type="number" value="1">
                                <a class="weui-count__btn weui-count__increase"></a>
                            </div>
                        </div>

                    </div>
                    <div class="cart-btn">
                        <button class="add">加入购物车</button>
                        <button class="buy">立即购买</button>
                    </div>
                </div>
            </div>-->


        </div>
    </div>
<script type="text/javascript">
var s_s = {'1':0,'2':0,'3':0};
function BuyNow(itemid) {
Go('<?php echo $MODULE['2']['mobile'];?>buy.php?mid=<?php echo $moduleid;?>&itemid='+itemid+'&s1='+s_s[1]+'&s2='+s_s[2]+'&s3='+s_s[3]+'&a=1');
}
function AddCart(itemid) {
    var url = '<?php echo $MODULE['2']['mobile'];?>cart.php?mid=<?php echo $moduleid;?>&itemid='+itemid+'&s1='+s_s[1]+'&s2='+s_s[2]+'&s3='+s_s[3]+'&a=1&ajaxreturn=1';
//    $.get(url,function(data){
//        alert(data);
//            if(data>0){
//    Dmsg('添加购物车成功！');
//            }else{
//    Dmsg('添加购物车失败！');
//            }
//    });
    $.ajax({
        type:"POST",
        url:url,
        data:'',
        dataType:'json',
        success:function(res){
//        alert(res.status);
            if(res.status>0){
    Dmsg('添加购物车成功！');
            }else{
    Dmsg('添加购物车失败！');
            }
        }
      });
//Go('<?php echo $MODULE['2']['mobile'];?>cart.php?mid=<?php echo $moduleid;?>&itemid='+itemid+'&s1='+s_s[1]+'&s2='+s_s[2]+'&s3='+s_s[3]+'&a=1');
}
</script>
<?php include template('footer');?>