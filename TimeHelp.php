<?php 


class TimeHelp {

	public $time;
	
	function __construct($time) {
		$this->time = $time;
	}

	public function  getRegular() {
		$data['phase2'] = date("Y-m-d h:i",time($this->time)+1800);
		$data['phase3'] = date("Y-m-d h:i",time($this->time)+12*3600);
		$data['phase4'] = date("Y-m-d",time($this->time)+24*3600);
		$data['phase5'] = date("Y-m-d",time($this->time)+24*3600*2);
		$data['phase6'] = date("Y-m-d",time($this->time)+24*3600*4);
		$data['phase7'] = date("Y-m-d",time($this->time)+24*3600*7);
		$data['phase8'] = date("Y-m-d",time($this->time)+24*3600*15);
		//$data['phase7'] = date("Y-m-d",time($this->time)+24*3600);
		return $data;
	}
}

 ?>