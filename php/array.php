<?php
//ksort
echo mktime(0, 0, 0, 1, 1, 2010);
$arr = array('b1' => 11,'b11' => 11,'b2' => 11,'b13' => 11,'b23' => 11);
ksort($arr);
foreach($arr as $k => $v) {
    echo "\n", $k, '==', $v;
}

//��������
$a = 20;
$b = 30;
echo "\n", $a;
echo "\n", $b;
$a = array($a, $b);
$b = $a[0];
$a = $a[1];
echo "\n", $a;
echo "\n", $b;

//�������
$arr1 = array(1, 3);
$arr2 = array(2, 4);
$arr3 = $arr1 + $arr2;
print_r($arr3);


//����ת����
$obj = new stdclass();
$obj->name = 'aa';
$obj->age = 20;

$arr = (array) $obj;
echo '<pre>'; var_dump($arr); echo '</pre>'; die();
