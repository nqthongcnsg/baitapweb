<?php
$a=[];
$item=['id'=>1,'name'=>'A','price'=>10];
$a[]=$item;
$item=['id'=>2,'name'=>'B','price'=>15];
$a[]=$item;
$item=['id'=>3,'name'=>'C','price'=>20];
$a[]=$item;
// print_r($a);
echo json_encode($a);d