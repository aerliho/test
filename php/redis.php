<?php
$province_hash = array(
    '����' => 34 ,
    '����' => 11 ,
    '����' => 50 ,
    '����' => 35 ,
    '����' => 62 ,
    '�㶫' => 44 ,
    '����' => 45 ,
    '����' => 52 ,
    '����' => 46 ,
    '�ӱ�' => 13 ,
    '������' => 23 ,
    '����' => 41 ,
    '����' => 42 ,
    '����' => 43 ,
    '���ɹ�' => 15 ,
    '����' => 32 ,
    '����' => 36 ,
    '����' => 22 ,
    '����' => 21 ,
    '����' => 64 ,
    '�ຣ' => 63 ,
    'ɽ��' => 14 ,
    'ɽ��' => 37 ,
    '�Ϻ�' => 31 ,
    '�Ĵ�' => 51 ,
    '���' => 12 ,
    '����' => 54 ,
    '�½�' => 65 ,
    '����' => 53 ,
    '�㽭' => 33 ,
    '����' => 61 ,
    '̨��' => 71 ,
    '���' => 81 ,
    '����' => 82 ,
    '����' => 400 ,
    '����' => 100 
);
$redis = new redis();  
$redis->connect('localhost', 6379);  
$redis->set('nana', 'kioko');
echo $redis->get('nana');
$redis->setOption(Redis::OPT_SERIALIZER, Redis::SERIALIZER_PHP);
//$redis->set('serial', array(1,2,3,4));
$redis->set('serial', $province_hash);
$result = $redis->get('serial');
echo '<pre>';
print_r($result);
echo '</pre>';
