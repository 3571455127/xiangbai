<?php
require '../common.inc.php';
//http:baixiang.com/api/test2.php
$title = 'student2';
$fields = array( 'stuNo', 'name', 'class' );
$fieldsval = array( '学号', '姓名', '班级');
$data = getData();
getExcel($title,$fields,$fieldsval,$data);

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
                'class' => '2班'
            ], [
                'stuNo' => '20190103',
                'name' => 'student03',
                'class' => '3班'
            ]
        ];

        return $studentList;
    }
?>