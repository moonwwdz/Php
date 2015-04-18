<?php

require_once("/usr/local/lib/Smarty3/libs/Smarty.class.php");
require_once("./Pg_DB.php");
require_once("./TimeHelp.php");

error_reporting(0);
// connect db and get data
$pg = new Pg("host=localhost port=5432 dbname=daily user=postgres password=123456");
$data = $pg->getAllList();

$timeHelp  = new TimeHelp();
foreach ($data as $k=>$v) {
	$data[$k] = array_merge($data[$k],$timeHelp->getRegular($v['reg_date']));
}
//var_dump($data);

$smarty = new Smarty;
//$smarty->debugging = true;

$smarty->assign("data",$data);
$smarty->display("index.tpl");