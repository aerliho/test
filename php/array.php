<?php
//ksort
/* echo mktime(0, 0, 0, 1, 1, 2010);
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
echo '<pre>'; var_dump($arr); echo '</pre>'; die(); */

echo memory_get_usage() , "\n";
$start = memory_get_usage();
$a = array();
for ($i=0; $i<1000; $i++) {
    $a[$i] = $i + $i;
}
$mid = memory_get_usage();
echo memory_get_usage() , "\n";
echo 'argv:', ($mid - $start) / 1000 ,'bytes' , "\n";

for ($i=1000; $i<2000; $i++) {
    $a[$i] = $i + $i;
}
$end = memory_get_usage();
echo memory_get_usage() , "\n";
echo 'argv:',($end - $mid) / 1000 ,'bytes' , "\n";
