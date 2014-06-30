<?php 
//echo 'HTTP_X_FORWARDED_FOR = ', $_SERVER['HTTP_X_FORWARDED_FOR'];
//echo 'HTTP_CLIENT_IP = ', $_SERVER['HTTP_CLIENT_IP'];
//echo 'REMOTE_ADDR = ', $_SERVER['REMOTE_ADDR'];

function getip() {  
    $unknown = 'unknown';  
    if ( isset($_SERVER['HTTP_X_FORWARDED_FOR']) 
        && $_SERVER['HTTP_X_FORWARDED_FOR'] 
        && strcasecmp($_SERVER['HTTP_X_FORWARDED_FOR'], $unknown) ) {  
        $ip = $_SERVER['HTTP_X_FORWARDED_FOR'];  
    } elseif ( isset($_SERVER['REMOTE_ADDR']) 
        && $_SERVER['REMOTE_ADDR']
        && strcasecmp($_SERVER['REMOTE_ADDR'], $unknown) ) {  
        $ip = $_SERVER['REMOTE_ADDR'];  
    }
    /*
    �������������  
    ����ʹ������ʽ��$ip = preg_match("/[\d\.]
    {7,15}/", $ip, $matches) ? $matches[0] : $unknown;  
     */  
    if (false !== strpos($ip, ','))  {
        $ip = reset(explode(',', $ip));  
    }
    return $ip;  
}
