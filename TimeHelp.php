<?php 


class TimeHelp {

	public $time;
	public $data;
	
	function __construct($time) {
		
	}

	public function  getRegular($time) {
		$this->getRegTime($time);
		$data['phase2'] = date("Y-m-d H:i",$this->time+1800);
		$data['phase3'] = date("Y-m-d H:i",$this->time+12*3600);
		$data['phase4'] = date("Y-m-d",$this->time+24*3600);
		$data['phase5'] = date("Y-m-d",$this->time+24*3600*2);
		$data['phase6'] = date("Y-m-d",$this->time+24*3600*4);
		$data['phase7'] = date("Y-m-d",$this->time+24*3600*7);
		$data['phase8'] = date("Y-m-d",$this->time+24*3600*15);
		//$data['phase7'] = date("Y-m-d",time($this->time)+24*3600);
		$data = array_merge($data,$this->addTodayColor($data));
		return $data;
	}

	public function getRegTime($time) {
		list($aTime,$bTime) = explode('.', $time);
		list($ymd,$his) = explode(' ',$aTime);
		list($y,$m,$d) = explode('-',$ymd);
		list($h,$i,$s) = explode(':', $his);
		$this->time = mktime($h,$i,$s,$m,$d,$y);
		$this->time += 3600*8;
	}

	public function addTodayColor($data) {
		$today = date("Y-m-d");
		for ($i=0; $i<9; $i++) {
			if(substr($data['phase'.$i],0,10) == $today) {
				$data['colorflag'.$i] = 1;
			}
		}
		return $data;
	}
}

 ?>
