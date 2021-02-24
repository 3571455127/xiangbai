<?php defined('IN_DESTOON') or exit('Access Denied');?><?php include template('header');?>
    <div class="personal main">
        <div class="info clearfix">
            <div class="info-content clearfix">
                <div class="info-img">
                    <div class="box-img"><img src="/mobile/static/xb/images/ico-avatar.png" alt=""></div>
                </div>
                <div class="info-text">
                    <div class="info-txt">
                        <div class="grade">
                            <div class="name"><?php echo $npassport;?></div>
                            <?php if($levelnum) { ?>
                            <div style="position:relative">
                                <img class="dengji" src="/mobile/static/xb/images/dengji.png" alt="">
                                <div class="grade-lv"> Lv.<?php echo $levelnum;?></div>
                            </div>
                            <?php } ?>

                        </div>
                        <div class="referral"> 我的推荐码 : <?php echo $yqcode;?></div>
                        <div class="invite">邀请人 : 
                            <?php if($sjuserid) { ?>
                            <?php echo $inviter;?>
                            <?php } else { ?>
                            总店
                            <?php } ?>
                        </div>
                    </div>
                    <div>
                        <div class="my-code open-popup" data-target="#my-code"><i class="iconfont icon-code"></i></div>
                        <div id="my-code" class="weui-popup__container popup-bottom">
                            <div class="weui-popup__overlay"></div>
                            <div class="weui-popup__modal">
                                <div class="box-img "><img src="/mobile/static/xb/images/shop-wechat.gif" alt=""></div>
                            </div>
                        </div>
                    </div>

                    <a href="edit.php" rel="external"> <i class="iconfont icon-_righticon"></i></a>
                </div>

            </div>

        </div>
        <div class="info-balance disflex">
            <div class="balance-box" onclick="location.href='charge.php?action=pay'">
                <span>余额</span>
                <span class="balance">
                    <i>¥ </i><?php echo $money;?></span>
            </div>
            <div class="recharge" onclick="location.href='charge.php?action=pay'">
                <i class="iconfont icon-chongzhi"></i>
                <span>充值</span>
            </div>
        </div>
        <div class="order">
            <div class="order-top">
                <div class="order-tleft">我的订单</div>
                <div class="order-tright disflex">
                    <a href="<?php echo DT_MOB;?>member/order.php?action=index" title="">
                        查看全部订单 <i class="iconfont icon-_righticon"></i>
                    </a>
                </div>
            </div>
            <div class="order-content disflex">
                <div class="payment">
                    <a href="<?php echo DT_MOB;?>member/order.php?nav=1" title="">
                    <!-- 右上角数字显示 -->
                    <?php if($dfknum) { ?><span class="order-num"><?php echo $dfknum;?></span><?php } ?>
                    <i class="iconfont icon-daifukuan"></i>
                    <p>待付款</p>
                    </a>
                </div>
                <div class="ship">
                    <a href="<?php echo DT_MOB;?>member/order.php?nav=2" title="">
                    <?php if($dfhnum) { ?><span class="order-num"><?php echo $dfhnum;?></span><?php } ?>
                    <i class="iconfont icon-icon2"></i>
                    <p>待发货</p>
                    </a>
                </div>
                <div class="receipt">
                    <a href="<?php echo DT_MOB;?>member/order.php?nav=3" title="">
                     <?php if($dshnum) { ?><span class="order-num"><?php echo $dshnum;?></span> <?php } ?>
                    <i class="iconfont icon-daishouhuo"></i>
                    <p>待收货</p>
                    </a>
                </div>
                <div class="appraisal">
                    <a href="<?php echo DT_MOB;?>member/order.php?nav=4" title="">
                     <?php if($dpjnum) { ?><span class="order-num"><?php echo $dpjnum;?></span> <?php } ?>
                    <i class="iconfont icon-wodepingjia"></i>
                    <p>评价</p>
                    </a>
                </div>
                <div class="after-sale">
                    <a href="<?php echo DT_MOB;?>member/order.php?nav=5" title="">
                    <?php if($tknum) { ?><span class="order-num"><?php echo $tknum;?></span><?php } ?>
                    <i class="iconfont icon-shouhoutuikuan"></i>
                    <p>退款/售后</p>
                    </a>
                </div>
            </div>
        </div>
        <div class="withdraw disflex">
            <div class="withdraw-box">
                <a href="<?php echo DT_MOB;?>member/cart.php" title="购物车">
                <i class="iconfont icon-gouwuche"></i>
                <p>购物车</p>
                </a>
            </div>
            <?php if($MG['address_limit']>-1) { ?>
            <div class="withdraw-box">
                <a href="<?php echo DT_MOB;?>member/address.php" title="收货地址">
                <i class="iconfont icon-dizhi"></i>
                <p>收货地址</p>
                </a>
            </div>
            <?php } ?>
            <div class="withdraw-box">
                <a href="<?php echo DT_MOB;?>member/favorite.php" title="收藏">
                <i class="iconfont icon-shoucang"></i>
                <p>收藏</p>
                </a>
            </div>
            <?php if($MG['cash']) { ?>
            <div class="withdraw-box">
                <a href="<?php echo DT_MOB;?>member/cash.php?action=record" title="余额提现">
                <i class="iconfont icon-zhanghuyue-tixian"></i>
                <p>余额提现</p>
                </a>
            </div>
            <?php } ?>
        </div>
        <div class="team">
            <div class="team-top">
                <a href="<?php echo DT_MOB;?>member/teamindex.php" title="我的团队">
                <div> 我的团队</div>
                </a>
                <a href="<?php echo DT_MOB;?>member/teamindex.php" title="我的团队"><i class="iconfont icon-_righticon"></i></a>
            </div>
            <div class="team-content disflex">
                <div class="team-box">
                <a href="<?php echo DT_MOB;?>member/team.php" title="成员">
                    <i class="iconfont icon-chengyuanicon"></i>
                    <div class="team-num">6人</div>
                    <p>成员</p>
                </a>
                </div>
                <div class="team-box">
                <a href="<?php echo DT_MOB;?>member/cart.php" title="佣金">
                    <i class="iconfont icon-yongjin3"></i>
                    <div class="commission"><span class="rmb">¥ </span>1000</div>
                    <p>佣金</p>
                </a>
                </div>
            </div>
        </div>
<a href="javascript:Dsheet('<a href=&#34;logout.php&#34; rel=&#34;external&#34;><span style=&#34;color:red&#34;>退出登录</span></a>', '取消', '确定要退出本次登录吗？');">
        <div class="sign-out">
            退出登录
        </div>
                </a>
    </div>


<?php include template('footer');?>