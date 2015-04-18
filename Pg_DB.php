<?php

class Pg {
	private $dns;
	private $conn;

	public function __construct ($dns) {
		$this->dns = $dns;

		$this->conn = $this->getDb();
	}


	public function getDb() {
		$conn = pg_connect($this->dns);
		if(!$conn) {
			return null;
		}

		return $conn;
	}

	//得到全部的计划列表
	public function getAllList() {
		$res = pg_query($this->conn,"select * from daily where del_flag <> 1");
		if(!$res) {
			return "";
		}

		$data = pg_fetch_all($res);
		if(!$data) {
			return "";
		}

		return $data;
	}

	//添加一个计划
	public function addOneList($str) {
		$res = pg_insert($this->conn,"daily",array("aim"=>$str,"phase"=>1,"reg_date"=>"now()"));
		if(!$res) {
			return false;
		}
		return true;
	}

	//更新一个计划的状态
	public function updatePlan($id,$phase) {
		$res = pg_update($this->conn,"daily",array("phase"=>$phase),array("id"=>$id));
		if(!$res) {
			return false;
		}
		return true;
	}

	//删除一个计划
	public function delPlan($id) {
		$res = pg_update($this->conn,"daily",array("del_flag"=>1),array("id"=>$id));
		if(!$res) {
			return false;
		}
		return true;
	}
}