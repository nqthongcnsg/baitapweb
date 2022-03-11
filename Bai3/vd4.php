<?php
$o= new PDO('mysql:host=localhost;dbname=shop','root','');
$o->query('set names utf8');
$kw=isset($_GET['kw'])?$_GET('kw'):'';
$sql="select * from product where namProduct like'%$kw%'";
$stm=$o->query($sql);
$data=$stm->fetchAll(PDO::FETCH_ASSOC);
echo json_encode($data);