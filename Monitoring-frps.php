<?php
set_time_limit(0);//程序执行时间无限制
$runing_count = 0;
$neak_count = 0;
$run_count = 0;
$run_status = 0;
while(true){
	$shell = "systemctl status frps.service";
	exec($shell, $result, $status);
	$run_count++;
	echo "\n";
	//print_r($status);
        //print_r($result);
	if( $status == 2){
		echo "shell命令{$shell}执行失败";
					
	} else {
			$counts = count($result)-1;
			if(strpos($result[$counts],'too many open files') !== false 
			or strpos($result[$counts],'failed to get work connection') !== false
			or strpos($result[$counts],'control writer is closing') !== false
			or strpos($result[$counts],'client exit success') !== false
			or strpos($result[$counts],'Replaced by client') !== false 
			){ 
			echo '发生泄露\n'; 
			$run_status = "neak";
			$neak_count++;
			}else{
			echo '没有泄露\n'; 
			$run_status = "ok";
			$runing_count++;
			}

					print_r($result);	
					print_r($result[$counts]);

					if($run_status == 'running'){
						echo "运行状态 \n";
						$runing_count++;
					}
					if($run_status == 'neak'){
						echo "发生泄露 \n";
						//$neak_count++;
						exec("systemctl restart frps.service", $result, $status);
						sleep(60);
						//print_r($result);
					}
				}
				echo "\n运行".$run_count."次，正常".$runing_count."次，泄露".$neak_count."次\n";
				sleep(10);
	$result = "";
}
	

