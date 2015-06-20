<?php

require_once("/usr/local/lib/Smarty3/libs/Smarty.class.php");
require_once("./Pg_DB.php");
require_once("./TimeHelp.php");
require_once('./markdown/Michelf/MarkdownExtra.inc.php');

use \Michelf\MarkdownExtra;

error_reporting(0);
// connect db and get data
$pg = new Pg("host=localhost port=5432 dbname=daily user=postgres password=123456");

if(!empty($_POST['myPlan'])) {
	$plan = $_POST['myPlan'];
	$res = $pg->addOneList($plan);
	if(!$res) {
		echo "<script>alter(\"Fail!!!!\");</script>";
	}
}

if(!empty($_POST['myPlan2'])) {
	$contents = $_POST['myPlan2'];
	$id = $_POST['hiddenId'];
	$res = $pg->updatePlan($id,$contents);
	if(!$res) {
		echo "<script>alter(\"Fail!!!!\");</script>";
	}
}
$data = $pg->getAllList();

$timeHelp  = new TimeHelp();
foreach ($data as $k=>$v) {
	$data[$k] = array_merge($data[$k],$timeHelp->getRegular($v['reg_date']));
	$data[$k]['contents_md'] = MarkdownExtra::defaultTransform($v['contents']);
}
//var_dump($data);

$smarty = new Smarty;
//$smarty->debugging = true;

$smarty->assign("data",$data);
$smarty->display("index.tpl");
