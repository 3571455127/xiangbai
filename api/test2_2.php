<?php
require '../common.inc.php';
//http:baixiang.com/api/test2.php
$title = 'student';
$fields = array(
    'stuNo'=>'学号',
    'name'=>'姓名',
    'class'=>'班级',
);
$data = getData();
getExcel($title,$fields,$data);
function getExcel($title,$fields,$data){
error_reporting(E_ALL);
date_default_timezone_set('Asia/Shanghai');
require_once './PHPExcel.php';
// 文件名和文件类型
        $fileName = $title;
        $fileType = "xlsx";
        $obj = new \PHPExcel();
        // 以下内容是excel文件的信息描述信息
        $obj->getProperties()->setCreator(''); //设置创建者
        $obj->getProperties()->setLastModifiedBy(''); //设置修改者
        $obj->getProperties()->setTitle(''); //设置标题
        $obj->getProperties()->setSubject(''); //设置主题
        $obj->getProperties()->setDescription(''); //设置描述
        $obj->getProperties()->setKeywords('');//设置关键词
        $obj->getProperties()->setCategory('');//设置类型

        // 设置当前sheet
        $obj->setActiveSheetIndex(0);

        // 设置当前sheet的名称
        $obj->getActiveSheet()->setTitle('student');

        // 列标
        $zm = ['A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z'];
        $list = array_slice($zm,0,count($fields),true);
        print_r($list);exit;
//        $list = array();

        // 填充第一行数据
        $obj->getActiveSheet()
                foreach($fields as $k=>$v){
            ->setCellValue($list[$k] . '1', '学号')
                }

            ->setCellValue($list[0] . '1', '学号')
            ->setCellValue($list[1] . '1', '姓名')
            ->setCellValue($list[2] . '1', '班级');
        // 填充第n(n>=2, n∈N*)行数据
//        print_r($data);exit;
//        $length = count($data);
//        for ($i = 0; $i < $length; $i++) {
////            $obj->getActiveSheet()->setCellValue($list[0] . ($i + 2), '20190101', \PHPExcel_Cell_DataType::TYPE_STRING);//将其设置为文本格式
//            $obj->getActiveSheet()->setCellValue($list[0] . ($i + 2), '20190101');//将其设置为文本格式
//            $obj->getActiveSheet()->setCellValue($list[1] . ($i + 2), 'student01');
//            $obj->getActiveSheet()->setCellValue($list[2] . ($i + 2), '1班');
//        }
foreach($data as $k=>$v){
    $obj->getActiveSheet()->setCellValue($list[0] . ($k + 2), $v['stuNo']);//将其设置为文本格式
    $obj->getActiveSheet()->setCellValue($list[1] . ($k + 2),  $v['name']);
    $obj->getActiveSheet()->setCellValue($list[2] . ($k + 2),  $v['class']);
}
        
        // 设置加粗和左对齐
        foreach ($list as $col) {
            // 设置第一行加粗
            $obj->getActiveSheet()->getStyle($col . '1')->getFont()->setBold(true);
            // 设置第1-n行，左对齐
            for ($i = 1; $i <= $length + 1; $i++) {
                $obj->getActiveSheet()->getStyle($col . $i)->getAlignment()->setHorizontal(\PHPExcel_Style_Alignment::HORIZONTAL_LEFT);
            }
        }

        // 设置列宽
        $obj->getActiveSheet()->getColumnDimension('A')->setWidth(20);
        $obj->getActiveSheet()->getColumnDimension('B')->setWidth(20);
        $obj->getActiveSheet()->getColumnDimension('C')->setWidth(15);

        // 导出
        ob_clean();
        if ($fileType == 'xls') {
            header('Content-Type: application/vnd.ms-excel');
            header('Content-Disposition: attachment;filename="' . $fileName . '.xls');
            header('Cache-Control: max-age=1');
            $objWriter = new \PHPExcel_Writer_Excel5($obj);
            $objWriter->save('php://output');
            exit;
        } elseif ($fileType == 'xlsx') {
            header('Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet');
            header('Content-Disposition: attachment;filename="' . $fileName . '.xlsx');
            header('Cache-Control: max-age=1');
            $objWriter = \PHPExcel_IOFactory::createWriter($obj, 'Excel2007');
            $objWriter->save('php://output');
        exit;
        
        }
}
// 准备数据
    function getData()
    {
        $studentList = [
            [
                'stuNo' => '20190101',
                'name' => 'student01',
                'class' => '1班'
            ], [
                'stuNo' => '20190102',
                'name' => 'student02',
                'class' => '1班'
            ], [
                'stuNo' => '20190103',
                'name' => 'student03',
                'class' => '1班'
            ]
        ];

        return $studentList;
    }
?>