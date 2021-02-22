<?php
require '../common.inc.php';
require 'grafika/autoloader.php';
require 'phpqrcode.php';
use Grafika\Grafika;
use Grafika\Color;
$auth="https://www.yige-tech.com/";
  $value = $auth;         //二维码内容
  $errorCorrectionLevel = 'H';  //容错级别
  $matrixPointSize = 6;      //生成图片大小
  
  $shareimg = 'grafika/images/foo-blend.jpg';//生成图片地址
  
  $backimg = 'grafika/images/poster_pc.jpg';//背景图片
  $ttfimg = 'grafika/fonts/ShangShouJianSongXianXiTi-2.ttf';//字体库
  
  $tjcode = '156492112';//推荐码
  $productimg = 'grafika/images/1.jpg';
  $producttitle = '   猫拜耳体内驱虫药肠道寄生虫打虫药片猫咪内虫逃驱虫1粒装';
  $productsub = "   猫拜耳体内驱虫药肠道寄生虫打虫药片猫咪内虫逃驱虫1粒装拜耳\n体内驱虫药肠道寄生虫打虫药片猫咪内虫逃驱虫1粒拜耳体内驱虫\n药肠道寄生虫打虫药片猫咪内虫逃驱虫1粒";
$productsub = autowrap(12, 0, $ttfimg, $productsub, 455); // 自动换行处理
//echo $productsub;exit;
  if(strlen($productsub)>90){
      
  }
  //生成二维码图片
  $filename = 'grafika/qrcode/'.time().rand(1,1000).'.png';
  $filename = 'grafika/qrcode/1605688238713.png';
//  QRcode::png($value,$filename , $errorCorrectionLevel, $matrixPointSize, 2);
//echo '<img src="'.DT_PATH.'api/image.png.php?auth='.$auth.'" width="140" height="140"/>';
$editor = Grafika::createEditor();
//echo '<img src="'.$image.'" width="140" height="140"/>';
//$editor->open($image3 ,'grafika/images/2.png');
//$editor->resizeFit( $image3, 400, 400 );
//合并商品图片
$editor->open($image1 ,$productimg);
$editor->resizeFit( $image1, 500, 650 );
$editor->open($image2 , $backimg);
$editor->blend ( $image2,$image1,'normal', 1, 'center',0,-100);
//合并二维码
$editor->open($image3 ,$filename);
$editor->blend ( $image2,$image3,'normal', 1, 'center',-180,400);
//标上个人推荐码
$editor->text($image2 ,$tjcode,15,265,120,new Color("#000000"),$ttfimg,0);
//标上商品标题
$editor->text($image2 ,$producttitle,16,30,680,new Color("#000000"),$ttfimg,0);
//标上商品简介
$editor->text($image2 ,$productsub,14,30,710,new Color("#000000"),$ttfimg,0);
$editor->save($image2,$shareimg);
//标上个人推荐码
//$editor2 = Grafika::createEditor();
//$editor2->open($img,$shareimg);
//$editor2->text($img ,'foo',20,0,10,new Color("#000000"),'grafika/fonts/LiberationSans-Regular.ttf',0);
//$editor2->save($img,$shareimg);
//echo '<img src="'.DT_PATH.'api/grafika/images/1.png" />';
//echo '<img src="'.DT_PATH.'api/grafika/images/poster_pc.jpg" />';
echo '<img src="'.DT_PATH.'api/'.$shareimg.'" />';
?>