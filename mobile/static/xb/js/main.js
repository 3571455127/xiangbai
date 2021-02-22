$(function () {

    // 弹窗 start
    var mySwiper1 = new Swiper('.preview-wrap .swiper-container', {
        observer: true,
        observeParents: true,
        loop: true,
        spaceBetween: 15,
        speed: 600,
        autoplay: true,
        pagination: {
            type: 'fraction',
            el: '.preview-wrap .swiper-pagination',
        },
    });

    $(".pwbox .swiper-container").click(function () {
        mySwiper1.autoplay.stop();
        $(this).parents(".pwbox").attr("id", "preview-modal");
        $(this).parents(".pwsiper").next("i").show();
        $("body").css("overflow", "hidden");
        $(".preview-footer").show()
    })
    $(".pwbox .icon-icon_clear").click(function () {
        $(this).parent().attr("id", "");
        $("body").css("overflow", "auto")
        $(this).hide();
        $(".preview-footer").hide();
        mySwiper1.autoplay.start();
    })

    $(".pfbtns-add").click(function () {
        $(this).parent().parent().parent().parent().attr("id", "");
        $(this).parent().parent().parent().prev().hide();
        $(".preview-footer").hide();
        $("body").css("overflow", "auto");
        mySwiper1.autoplay.start();
        addCarts();
    })
    var previewModal = document.getElementById("preview-modal");
    window.onclick = function (event) {
        if (event.target == previewModal) {
        }
    }

    // 弹窗end


    // 判断访问类型是PC端还是手机端
    function isMobile() {
        var userAgentInfo = navigator.userAgent;
        var mobileAgents = ["Android", "iPhone", "SymbianOS", "Windows Phone", "iPad", "iPod"];
        var mobile_flag = false;
        //根据userAgent判断是否是手机
        for (var v = 0; v < mobileAgents.length; v++) {
            if (userAgentInfo.indexOf(mobileAgents[v]) > 0) {
                mobile_flag = true;
                break;
            }
        }
        var screen_width = window.screen.width;
        var screen_height = window.screen.height;

        //根据屏幕分辨率判断是否是手机
        if (screen_width < 768 && screen_height < 800) {
            mobile_flag = true;
        } else {
            $(".product .pro-content .pull-right>a").click(function () {
                $(this).removeClass("open-popup");
                $.toast("预览不支持进行购买，实际效果请在手机上进行。", "text");
            })
        }
        return mobile_flag;
    };
    // true为PC端，false为手机端
    var mobile = isMobile();

    // index-banner
    var mySwiper = new Swiper('.index-banner .swiper-container', {
        loop: true,
        autoplay: true,
        speed: 600,
        pagination: {
            el: '.index-banner .swiper-pagination',
        },
        lazy: true,
    })


    // preview-wrap
    var mySwiper = new Swiper('.a .swiper-container', {
        loop: true,
        autoplay: true,
        speed: 600,
        pagination: {
            el: '.a .swiper-pagination',
            // type: 'fraction',
        },
    })
    var mySwiper = new Swiper('.b .swiper-container', {
        loop: true,
        autoplay: true,
        speed: 600,
        pagination: {
            el: '.b .swiper-pagination',
            // type: 'fraction',
        },
    })

    // order
    var galleryThumbs = new Swiper('.order .gallery-thumbs', {
        slidesPerView: 5,
        freeMode: true,
        freeModeSticky: true,
        watchSlidesVisibility: true,
        watchSlidesProgress: true,
    });
    var galleryTop = new Swiper('.order .gallery-top', {
        autoHeight: true,
        // speed: 600,
        thumbs: {
            swiper: galleryThumbs
        }
    });



    // up
    $(window).scroll(function () {
        if ($(window).scrollTop() > 50) {
            $(".gotop").fadeIn(1000);
            $("#product-show").css("opacity", 1);
            $(".product").addClass("proudct-top");
        } else {
            $(".gotop").fadeOut(1000);
            $("#product-show").css("opacity", 0);
            $(".product").removeClass("proudct-top");
        }
    });
    $(".gotop").click(function () {
        $("html,body").animate({
            scrollTop: 0
        }, 1000);
    });

    // search
    $("#searchs").click(function () {
        $(".search").show();
        $(".search input").focus();
    })
    $(".close-search").click(function () {
        $(".search").hide()
    })

    // ------ product列表 start ------
    // product列表
    $(".pro-active #show-toast-text").click(function () {
        $.toast("该商品已售罄", "text");
    })

    $(".directions .txt i").click(function () {
        var flag = $(this).hasClass("icon-down");
        flag ? $(this).removeClass("icon-down").addClass("icon-up") : $(this).addClass("icon-down").removeClass("icon-up");
    })
    // 加入购物车
    $(".goods-buttons .add").click(function () {
        addCarts();
    });


    $(".quantity-box span").click(function () {
        $(this).addClass("quantity-active").siblings().removeClass();
        var specification = $(this).text();
        $(".specification").text("已选 " + specification);
        var a = $(".specification").text();
        if (a == "已选 单支装") {
            $(".cart-prices").text("335.00");
        } else {
            $(".cart-prices").text("620.00");
        }
    })
    // ------ proudct 列表 end ------

    // ------登陆注册分割线 start------
    // loging 
    $('.login .phone').bind('input propetychange', function () {
        $(this).val($(this).val().replace(/-/g, ''));
        if ($(this).val().length >= 11) {
            // 超过11位数时截取到11位
            $(this).val($(this).val().substr(0, 11));
        } else {
        }
    });
    $(".login .vcode input").bind("input propertychange", function () {
        var phone = $('.login input[name="phone"]').val();
        var password = $('.login input[name="password"]').val();
        if (!(phone == "" || password == "")) {
            $(".submit").css("opacity", "1")
        } else {
            $(".submit").css("opacity", ".5")
        }
    });
    $(".registered .vcodes input").bind("input propertychange", function () {
        var phone = $('.registered .phone').val();
        var code = $('.login input[name="code"]').val();
        var password1 = $('.login input[name="password1"]').val();
        var password2 = $('.login input[name="password2"]').val();
        if (!(phone == "" || password1 == "" || password2 == "" || code == "")) {
            $(".submit").css("opacity", "1")
        } else {
            $(".submit").css("opacity", ".5")
        }
    });
    $(".registered .submit").click(function () {
        var flag = $(this).parents(".registered").find(".ai").hasClass("icon-kongxinyuan");
        // console.log(flag);
        if (flag) {
            $.toast("请阅读并同意《用户服务协议》", "text");
            return false
        } else {

        }
    })
    // 密码显示与隐藏 eye
    $(".registered .country i").click(function () {
        var flag = $(this).hasClass("icon-closed-eye");
        if (flag) {
            $(this).prev().attr('type', 'text');
            $(this).removeClass("icon-closed-eye").addClass("icon-eye-o");
        } else {
            $(this).prev().attr('type', 'password');
            $(this).removeClass("icon-eye-o").addClass("icon-closed-eye");
        }
    })
    $(".registered .user i").click(function () {
        var flag = $(this).hasClass("icon-kongxinyuan");
        // console.log(flag);
        flag ? $(this).removeClass("icon-kongxinyuan").addClass("icon-respage_success") : $(this).addClass("icon-kongxinyuan").removeClass("icon-respage_success");
    })

    // ------登陆注册分割线 end------


    // -------- 分割线 ---------

    // 购物车页面 start
    $(".cart .login-tip .closes").click(function () {
        $.modal({
            title: "提醒",
            text: "绑定手机号，有助于订单查询哦～",
            buttons: [
                { text: "我知道了", className: "default" },
                { text: "明天再提醒", onClick: function () { } },
            ]
        });
    })

    $("#login-btn input").bind("input propertychange", function () {
        var phone = $('#login-btn .phone input').val();
        var codes = $('#login-btn .codes input').val();
        if (!(phone == "")) {
            $("#login-btn .icon-icon_clear").show();
            $("#login-btn .icon-icon_clear").click(function () {
                $('#login-btn .phone input').val("")
            })
        }
        if (!(phone == "" || codes == "")) {
            $(".login-input").css("opacity", "1")
        } else {
            $(".login-input").css("opacity", ".5")
        }
    });
    $(".agreement .pull-left").click(function () {
        var flag = $(this).text();
        console.log(flag);
        if (flag === "帐号密码登录") {
            $(this).text("验证码登录")
            $(this).parent().prevAll("h4").text("帐号密码登录");
            $(this).parent().prev().find("input").attr("placeholder", "请输入密码");
            $(this).parent().prev().find(".codes-span").hide();
            $(this).next(".pull-right").show();
        } else {
            $(this).text("帐号密码登录")
            $(this).parent().prevAll("h4").text("手机号登录");
            $(this).parent().prev().find("input").attr("placeholder", "请输入6位验证码");
            $(this).parent().prev().find(".codes-span").show();
            $(this).next(".pull-right").hide();
        }
    });
    // 计数 
    // 阻止事件冒泡
//    let isClickP = false;
//    let isClickA = false;
//    $(".goods-group .box a").click(function (event) {
//        isClickA = true;
//        if (isClickP && isClickA) {
//            event.preventDefault();
//        }
//        setTimeout(() => isClickA = false, 0);
//    })
//    $('.product-intro .icon-left').click(function (event) {
//        isClickA = true;
//        if (isClickP && isClickA) {
//            event.preventDefault();
//        }
//        setTimeout(() => isClickA = false, 0);
//    });
//    $(".numchange").click(function () {
//        isClickP = true;
//        setTimeout(() => isClickP = false, 0);
//    })
    // 添加
//    $(".plus").click(function () {
//        isClickP = true;
//        setTimeout(() => isClickP = false, 0);
//        $(this).prevAll(".sub").removeClass("sub-disabled");
//        $(this).prev().val(parseInt($(this).prev().val()) + 1);
//        result();
//    });
//    //  减少
//    $(".sub").click(function () {
//        isClickP = true;
//        setTimeout(() => isClickP = false, 0);
//        $(this).next().val(parseInt($(this).next().val()) - 1);
//        if (parseInt($(this).next().val()) <= 1) {
//            $(this).next().val(1);
//            $(this).addClass("sub-disabled");
//        }
//        result();
//    });

    // 点击左侧icon选择
//    $(".ckb").click(function () {
//        $(this).children("i").toggleClass("icon-icon_success");
////        shuliang();
////        productxz();
////        result();
//    });

    // 全选
//    $(".cart-bottom .select-all").click(function () {
//        var flagSett = $(this).next().find(".product-sett").hasClass("product-sett-active");
//        flagSett ? $(".product-sett").removeClass("product-sett-active") : $(".product-sett").addClass("product-sett-active");
//        var fxk = $(".cart .goods-group .iconfont");
//        $(".select-all .iconfont").toggleClass("icon-icon_success");
//        if ($(this).find(".boxs .iconfont").is(".icon-icon_success")) {
//            fxk.addClass("icon-icon_success");
//        } else {
//            fxk.removeClass("icon-icon_success");
//        }
//        result();
//    });
    // 全选状态
//    function productxz() {
//        var xz = $(".cart .goods-group .iconfont");
//        var xz1 = $(".cart .goods-group .icon-icon_success");
//        (xz1.length == xz.length) ? $(".select-all .iconfont").addClass("icon-icon_success") : $(".select-all .iconfont").removeClass("icon-icon_success");
//        result();
//    }
    // 手动输入数量  失去焦点时计算
//    $("cart .numchange").blur(function () {
////        result();
//    })
    // 删除购物车
//    $(".cart .shop-header .edit").click(function () {
//        var a = $(this).text();
//        if (a == "编辑") {
//            $(this).text("完成");
//            $(".total-price").hide();
//            $(".product-sett").text("删除");
//            $(".button-wrap button").attr("id", "product-del");
//            $("#product-del").click(function () {
//                $.confirm("确定删除所选店铺的1个商品？", function () {
//                    $(".goods-group .box").each(function () {
//                        var flag = $(this).find("i").hasClass("icon-icon_success");
//                        if (flag) {
//                            $(this).remove();
//                        }
//                        result()
//                    });
//                }, function () {
//
//
//                });
//
//                result()
//            });
//            result()
//        } else {
//            $(this).text("编辑");
//            $(".total-price").show();
//            $(".product-sett").text("结算");
//            $(".button-wrap button").removeAttr("id", "product-del");
//        }
//    })

    // 计算全部价格
//    function result() {
//        var allprice = 0;
//        var allnumber = 0;
//        $(".ckb i").each(function () {
//            if ($(this).is(".icon-icon_success")) {
//                allprice += parseInt($(this).parents(".box").find(".price").text()) * parseInt($(this).parents(".box").find(".numchange").val());
//                allnumber += parseInt($(this).parents(".box").find(".numchange").val());
//                console.log(allnumber);
//            } else {
//                allprice += 0;
//                allnumber += 0;
//            }
//        });
//        $(".all-price").text(allprice.toFixed(2));
//        $(".all-number").text(allnumber)
//    }
//    // 结算按钮变色
//    function shuliang() {
//        var cd = $(".ckb .icon-icon_success").length;
//        (cd > 0) ? $(".product-sett").addClass("product-sett-active") : $(".product-sett").removeClass("product-sett-active");
//    }


    // 购物车页面 end

    // 结算页面 start
    $("#pay-coupon .coupon-control").bind("input propertychange", function () {
        var a = $(this).val();
        console.log(a);
        if (!(a == "")) {
            $(this).next().show();
            $(this).parent().next().css("opacity", "1");
        } else {
            $(this).next().hide();
            $(this).parent().next().css("opacity", ".5");
        }
    })
    $("#pay-coupon .icon-icon_clear").click(function () {
        $(this).prev().val("");
        $(this).hide();
        $(this).parent().next().css("opacity", ".5");
    });

    $("#pay-coupon .nav-tabs").children().eq(1).click(function () {
        $(this).next().css("transform", "translateX(260px) translateX(-50%)")
    });
    $("#pay-coupon .nav-tabs").children().eq(0).click(function () {
        $(this).nextAll(".coupon-line").css("transform", "translateX(86px) translateX(-50%)")
    });

    // 价格计算
//    var payPrice = 0;
//    var payNum = 0;
//    $(".pay-card .price-box").each(function () {
//        payPrice += parseInt($(this).find(".price-span").text()) * parseInt($(this).find(".card-number").text());
//        payNum += parseInt($(this).find(".card-number").text());
//        // 优惠券 暂时未设置
//        var allCoupon = 0;
//        // 运费
//        var allShipping = parseInt($(".all-shipping").text());
//
//        // console.log(allShipping);
//        $(".all-price").text(payPrice);
//        $(".pay-number").text(payNum);
//        // 实现支付总价格
//        $(".bar__price").text((payPrice - allCoupon + allShipping))
//    })
    // 结算页面 end
//    function addCarts() {
//        setTimeout(function () {
//            $.toast("已成功添加到购物车", "text");
//        }, 500);
//    }

})

// lazyload
window.addEventListener("load", function (event) {
    lazyload();
});



// order
var fl_w = $(".find_nav_list").width();
var flb_w = $('.find_nav_left').width();
console.log(fl_w);
$(".nav-tabs li").click(function () {
    var nav_w = $(this).width();
    var fn_w = ($(".find_nav").width() - nav_w) / 2;
    var fnl_l;
    var fnl_x = parseInt($(this).position().left);
    if (fnl_x <= fn_w) {
        fnl_l = 0;
    } else if (fn_w - fnl_x <= flb_w - fl_w) {
        fnl_l = flb_w - fl_w;
    } else {
        fnl_l = fn_w - fnl_x;
    }
    $(".find_nav_list").animate({
        "left": fnl_l
    }, 300);
    $(".find_nav_list").on('touchstart', function (e) {
        var touch1 = e.originalEvent.targetTouches[0];
        x1 = touch1.pageX;
        y1 = touch1.pageY;
        ty_left = parseInt($(this).css("left"));
    });

    $(".find_nav_list").on('touchmove', function (e) {
        var touch2 = e.originalEvent.targetTouches[0];
        var x2 = touch2.pageX;
        var y2 = touch2.pageY;
        if (ty_left + x2 - x1 >= 0) {
            $(this).css("left", 0);
        } else if (ty_left + x2 - x1 <= flb_w - fl_w) {
            $(this).css("left", flb_w - fl_w);
        } else {
            $(this).css("left", ty_left + x2 - x1);
        }
        if (Math.abs(y2 - y1) > 0) {
            e.preventDefault();
        }
    });
})





