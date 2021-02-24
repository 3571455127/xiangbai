<?php defined('IN_DESTOON') or exit('Access Denied');?><?php
$zmoney = 0;
foreach($lists as $k=>$vd){
    $zmoney +=$vd['price']*$vd['number'];
}
//echo $zmoney;
?>
<div class="main">
<?php if(is_array($lists)) { foreach($lists as $v) { ?>
<div class="list-img">
<a href="<?php echo $v['linkurl'];?>"><img src="<?php if($v['thumb']) { ?><?php echo $v['thumb'];?><?php } else { ?><?php echo DT_MOB;?>static/img/60x60.png<?php } ?>" width="60" height="60" alt="" onerror="this.src='<?php echo DT_MOB;?>static/img/60x60.png';"/></a>
<ul>
<li><a href="<?php echo $v['linkurl'];?>"><strong><?php echo $v['title'];?></strong></a></li>
<li><em class="f_r">x<?php echo $v['number'];?></em><span><?php echo $DT['money_sign'];?><?php echo $v['price'];?></span></li>
</ul>
</div>
<?php } } ?>
<div class="content">
订单编号：<?php echo $td['itemid'];?><br/>
<?php if(isset($td['money'])) { ?>
订单总额：<?php echo $td['money'];?><br/>
<?php } ?>
<?php if($td['fee_name'] && $td['fee']) { ?>
<?php echo $td['fee_name'];?>：<?php echo $td['fee'];?><br/>
<?php } ?>
<?php if(isset($td['discount'])) { ?>
<!--优惠金额：-<?php echo $td['discount'];?><br/>-->
<?php } ?>
        <?php if(isset($td['discount']) || $salespricea) { ?>
优惠金额：-<?php echo $zmoney-$td['total'];?><br/>
<?php } ?>
实付金额：<b class="f_red px14"><?php echo $td['total'];?></b>
</div>
</div>