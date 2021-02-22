<?php
require '../common.inc.php';
//http:baixiang.com/api/test2.php
//$i = 1;
//$arr = getfiles($i);日期，姓名，国家，城市，电话，邮箱
$arr = array();
for($i=1;$i<11;$i++){
$arr[$i] = getJsonfiles($i);
}
//print_r($arr);

$ar = array();
foreach($arr as $k=>$v){
    $ar[$k]['createdOn'] = $v['createdOn'];
    $ar[$k]['name'] = $v['visitor']['name'];
    $ar[$k]['email'] = $v['visitor']['email'];
    $ar[$k]['countryCode'] = $v['location']['countryCode'];
    $ar[$k]['city'] = $v['location']['city'];

}
//print_r($arr);
print_r($ar);

function getJsonfiles($i){
    //读取文件数据
$file_path = "../test/".$i.".json";
if(file_exists($file_path)){
$fp = fopen($file_path,"r");
$str ="";
while(!feof($fp)){
$str .= fgets($fp);//逐行读取。如果fgets不写length参数，默认是读取1k。
}
$str = str_replace("\r\n","<br />",$str);
$str = json_decode($str,true);
return $str;
//print_r($str);
fclose($fp);
}
}
?>