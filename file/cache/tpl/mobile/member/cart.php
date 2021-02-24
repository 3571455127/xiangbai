<?php defined('IN_DESTOON') or exit('Access Denied');?><?php include template('header');?>
    <div class="cart main" style="    background: none;">

        <div class="back-top">
            <a href="<?php echo $back_link;?>" title="购物车">
                <i class="iconfont icon-left"></i>
                <span>购物车</span>
            </a>
        </div>

        <div class="shop-header disflex">
            <div class="left">
                共<span class="all-number" id="total_good">0</span>件商品
                <!--<b id="total_good" style="display: none;"></b>-->
            </div>
            <?php if($lists) { ?><a href="javascript:move_muti();" class="right edit" >编辑</a><?php } ?>
        </div>
        <div class="goods-group">
            <div class="list">
                <?php if($lists) { ?>
<form method="post" action="buy.php" id="subbuy" onsubmit="return Mcheck();">
<input type="hidden" name="from" value="cart"/>
<input type="hidden" name="mid" value="<?php echo $mid;?>"/>
<?php if(is_array($lists)) { foreach($lists as $tags) { ?>
<?php if(is_array($tags)) { foreach($tags as $i => $t) { ?>
<?php if($i == 0) { ?>
<div class="box" style="display: none;">
    <div class="ckb disflex">
        <label>
        <input type="checkbox" checked="checked" id="check-<?php echo $t['username'];?>" onclick="Ccheck('<?php echo $t['username'];?>');calculate();" data-check="<?php echo $t['username'];?>"/>
        <i class="iconfont"></i>
        </label>
    </div>

<?php $promos = get_promos($t['username']);?>
<?php if($promos) { ?>
<a href="<?php echo $MODULE['2']['mobile'];?>coupon.php?username=<?php echo $t['username'];?>" target="_blank"><span>优惠券</span></a>
<?php } ?>
<s id="total-<?php echo $t['username'];?>" data-user="<?php echo $t['username'];?>">0.00</s>

</div>


<?php } ?>
<input type="hidden" id="a1_<?php echo $t['key'];?>" value="<?php echo $t['a1'];?>"/>
<input type="hidden" id="a2_<?php echo $t['key'];?>" value="<?php echo $t['a2'];?>"/>
<input type="hidden" id="a3_<?php echo $t['key'];?>" value="<?php echo $t['a3'];?>"/>
<input type="hidden" id="p1_<?php echo $t['key'];?>" value="<?php echo $t['p1'];?>"/>
<input type="hidden" id="p2_<?php echo $t['key'];?>" value="<?php echo $t['p2'];?>"/>
<input type="hidden" id="p3_<?php echo $t['key'];?>" value="<?php echo $t['p3'];?>"/>
<input type="hidden" id="amount_<?php echo $t['key'];?>" value="<?php echo $t['amount'];?>"/>

<div class="box">
<div class="ckb disflex">
    <label>
        <input type="checkbox" name="cart[]" value="<?php echo $t['key'];?>" checked="checked" onclick="calculate()" id="check_<?php echo $t['key'];?>" data-check="<?php echo $t['username'];?>"/>
        <i></i></label>
</div>


    <div class="box-right">
        <a href="<?php echo $t['moburl'];?>" title="<?php echo $t['alt'];?>"><div class="box-img"><img src="<?php if($t['thumb']) { ?><?php echo $t['thumb'];?><?php } else { ?>static/img/nopic-60.png<?php } ?>" alt="<?php echo $t['alt'];?>"></div>
</a>
        <div class="txt">
<a href="<?php echo $t['moburl'];?>" title="<?php echo $t['alt'];?>">
            <div>
                <div class="title"><?php echo $t['alt'];?></div>
                <div class="price-box">
                    <span><?php echo $DT['money_sign'];?></span>
                    <span class="price" id="price_<?php echo $t['key'];?>">
                        <?php if($salespricea) { ?>
                    <?php echo intval($t['price']*$salespricea);?>
                    <?php } else { ?>
                    <?php echo $t['price'];?>
                    <?php } ?>
                    </span>
                   <span class="price"> <?php if(isset($t['unit']) && $t['unit']) { ?>/<?php echo $t['unit'];?><?php } ?></span>
                </div>
            </div>
</a>
            <div class="opera">
                <span class="sub sub-disabled a1" onclick="alter('<?php echo $t['key'];?>', '-');"></span>
                <font class="a2"><input type="tel" class="numchange" name="amounts[<?php echo $t['key'];?>]" value="<?php echo $t['a'];?>" id="number_<?php echo $t['key'];?>" onblur="calculate();"/></font>
                <span class="plus a3" onclick="alter('<?php echo $t['key'];?>', '+');"></span>
            </div>
<s id="total_<?php echo $t['key'];?>" total-<?php echo $t['username'];?>="1" style="display:none;"><?php echo $t['price'];?></s>
        </div>
    </div>
</div>
<?php } } ?>
<?php } } ?>
            </div>
        </div>
        <div class="cart-bottom">
            <div class="select-all">
                <div class="boxs">
                    <label>
                    <input type="checkbox" checked="checked" id="check-all" onclick="Ccheck();calculate();"/>
                    <i></i>
                    </label>
                    <span>全选</span>
                </div>
            </div>
            <div class="button-wrap">
                <div class="total-price">
                    <p>合计：<span class="ico-rmb">¥</span>
                        <span class="all-price" id="total_amount"></span>
                    </p>
                    <!--<p class="desc"> 不含运费 </p>-->
                </div>
                <button class="product-sett" onclick="$('#subbuy').submit();">结算</button>
            </div>
        </div>


</form>
<?php } else { ?>
<?php if($code > 0) { ?>
<div class="ui-ok">
<p>商品已成功加入购物车！ </p>
<input type="button" value="立即结算" class="btn-green" onclick="Go('?mid=<?php echo $mid;?>');"/>
<input type="button" value="返回商品" class="btn" onclick="Go('<?php echo DT_MOB;?>api/redirect.php?mid=<?php echo $moduleid;?>&itemid=<?php echo $code;?>');"/>
</div>
<?php } else { ?>
<div class="main">
<div class="content"><br/><br/><center>您的 <span class="f_orange">购物车</span> 还是空的，赶快行动吧！<br/><br/>马上去 <a href="<?php echo $MOD['mobile'];?>" class="b">挑选商品</a></center><br/><br/></div>
</div>
<?php } ?>
<?php } ?>

    </div>
<script type="text/javascript">
    // 结算按钮变色
    function subbuy() {
var total_good2 = parseInt(Dd('total_good').innerHTML);
//        alert(total_good2);
//        if(total_good2 > 0){
//            alert('a');
//            $(".product-sett").addClass("product-sett-active");
//        }else{
//            alert('b');
//            $(".product-sett").removeClass("product-sett-active");
//        }
        (total_good2 > 0) ? $(".product-sett").addClass("product-sett-active") : $(".product-sett").removeClass("product-sett-active");
    }
function Ccheck(key) {
$(key ? '[data-check="'+key+'"]' : '[data-check]').each(function(){
$(this).prop('checked', $('#check-'+(key ? key : 'all')).prop('checked') ? true : false);
});
}
function Mcheck() {
if(Dd('total_good').innerHTML == '0') {
alert('最少需要挑选1件商品');
window.scroll(0, 0);
return false;
}
    return true;
}
function move_muti() {
if(Dd('total_good').innerHTML == '0') {
alert('未选择商品');
return;
}
if(confirm('确定要删除选中商品吗？')) {
var par = 'action=delete&mid=<?php echo $mid;?>&ajax=1';
$(':checked').each(function(i) {
if($(this).attr('id').indexOf('check_') != -1) {
par += '&key[]='+$(this).val();
}
});
$.post('?', par, function(data) {
Go('?mid=<?php echo $mid;?>&rand=<?php echo $DT_TIME;?>');
});
}
}
function move(i) {
Dd('check_'+i).checked = false;
Dd('check_'+i).disabled = true;
Dh('tr_'+i);
calculate();
$.post('?', 'action=delete&mid=<?php echo $mid;?>&ajax=1&key='+i, function(data) {
var cart_num = get_cart();
$('#destoon_cart').html(cart_num > 0 ? '<strong>'+cart_num+'</strong>' : '0');
if(data == 1 && Dd('total_good').innerHTML == '0') Go('?mid=<?php echo $mid;?>&rand=<?php echo $DT_TIME;?>');
});
}
function alter(i, t) {
if(t == '+') {
var maxa = parseFloat(Dd('amount_'+i).value);
if(maxa && Dd('number_'+i).value >= maxa) return;
Dd('number_'+i).value =  parseInt(Dd('number_'+i).value) + 1;
} else {
var mina = parseFloat(Dd('a1_'+i).value);
if(Dd('number_'+i).value <= mina) return;
Dd('number_'+i).value = parseInt(Dd('number_'+i).value) - 1;
}
calculate();
}
function get_price(i) {
if(Dd('a2_'+i).value > 0) {
if(Dd('a3_'+i).value > 1 && parseInt(Dd('number_'+i).value) > parseInt(Dd('a3_'+i).value)) return Dd('p3_'+i).value;
if(Dd('a2_'+i).value > 1 && parseInt(Dd('number_'+i).value) > parseInt(Dd('a2_'+i).value)) return Dd('p2_'+i).value;
}
return Dd('p1_'+i).value
}
function calculate() {
var _good = _amount = _total = 0;
$(':checked').each(function(i) {
if($(this).attr('id').indexOf('check_') != -1) {
var key = $(this).val();
var num, good, maxa, mina, price;
num = parseInt(Dd('number_'+key).value);
maxa = parseInt(Dd('amount_'+key).value);
mina = parseInt(Dd('a1_'+key).value);
if(num < mina) Dd('number_'+key).value = num = mina;
if(num > maxa) Dd('number_'+key).value = num = maxa;
if(isNaN(num) || num < 0) Dd('number_'+key).value = num = mina;
_good++;
price = parseFloat(get_price(key));
                        var salespricea = 0;
                         <?php if($salespricea) { ?>
                         salespricea = <?php echo $salespricea;?>;
                         price = price*salespricea;
                         <?php } ?>
_total = price*num;
_amount += _total;
Dd('price_'+key).innerHTML = price.toFixed(2);
Dd('total_'+key).innerHTML = _total.toFixed(2);
}
});
//        alert(_amount);
Dd('total_good').innerHTML = _good;
Dd('total_amount').innerHTML = _amount.toFixed(2);
//      alert(Dd('total_amount').innerHTML);
$('[data-user]').each(function() {
var user = $(this).attr('data-user');
var tt = 0;
$('[total-'+user+']').each(function() {
tt += parseFloat($(this).html());
});
$(this).html(tt.toFixed(2));
});
        subbuy();
}
<?php if($lists) { ?>$(function(){calculate();});<?php } ?>
</script>
</body>
<!-- js -->
<script type="text/javascript" src="<?php echo DT_MOB;?>static/xb/js/jquery-weui.min.js"></script>
<script type="text/javascript" src="<?php echo DT_MOB;?>static/xb/js/bootstrap.min.js"></script>
 <!--iOS 系统下默认的 click 事件会有300毫秒的延迟，可以使用 fastclick 来消除这个延迟。--> 
<script type="text/javascript" src="<?php echo DT_MOB;?>static/xb/js/fastclick.js"></script>
<script type="text/javascript" src="<?php echo DT_MOB;?>static/xb/js/lazyload.min.js"></script>
<script type="text/javascript" src="<?php echo DT_MOB;?>static/xb/js/swiper.min.js"></script>
<script type="text/javascript" src="<?php echo DT_MOB;?>static/xb/js/main.js"></script>

</html>