screen -ls|awk 'NR>=2&&NR<=20{print $1}'|awk '{print "screen -S "$1" -X quit"}'|sh
screen_name1=$"EOS_hq_huobi"
screen -dmS $screen_name1
cmd1=$"php -f /var/www/html/v1/get_hq/get_hq_eosbtc_huobi.php";
screen -x -S $screen_name1 -p 0 -X stuff "$cmd1"
screen -x -S $screen_name1 -p 0 -X stuff $'\n'
screen -x -S $screen_name1 -p 0 -X stuff "exit"
#第二个
screen_name2=$"EOS_hq_kucoin"
screen -dmS $screen_name2
cmd2=$"php -f /var/www/html/v1/get_hq/get_hq_eosbtc_kucoin.php";
screen -x -S $screen_name2 -p 0 -X stuff "$cmd2"
screen -x -S $screen_name2 -p 0 -X stuff $'\n'
screen -x -S $screen_name2 -p 0 -X stuff "exit"
#
screen_name3=$"ETN_hq_huobi"
screen -dmS $screen_name3
cmd3=$"php -f /var/www/html/v1/get_hq/get_hq_etnbtc_huobi.php";
screen -x -S $screen_name3 -p 0 -X stuff "$cmd3"
screen -x -S $screen_name3 -p 0 -X stuff $'\n'
screen -x -S $screen_name3 -p 0 -X stuff "exit"
#
screen_name4=$"ETN_hq_kucoin"
screen -dmS $screen_name4
cmd4=$"php -f /var/www/html/v1/get_hq/get_hq_etnbtc_kucoin.php";
screen -x -S $screen_name4 -p 0 -X stuff "$cmd4"
screen -x -S $screen_name4 -p 0 -X stuff $'\n'
screen -x -S $screen_name4 -p 0 -X stuff "exit"
#
screen_name5=$"UTK_hq_huobi"
screen -dmS $screen_name5
cmd5=$"php -f /var/www/html/v1/get_hq/get_hq_utkbtc_huobi.php";
screen -x -S $screen_name5 -p 0 -X stuff "$cmd5"
screen -x -S $screen_name5 -p 0 -X stuff $'\n'
screen -x -S $screen_name5 -p 0 -X stuff "exit"
#
screen_name6=$"UTK_hq_kucoin"
screen -dmS $screen_name6
cmd6=$"php -f /var/www/html/v1/get_hq/get_hq_utkbtc_kucoin.php";
screen -x -S $screen_name6 -p 0 -X stuff "$cmd6"
screen -x -S $screen_name6 -p 0 -X stuff $'\n'
screen -x -S $screen_name6 -p 0 -X stuff "exit"
#
screen_name7=$"DBC_hq_huobi"
screen -dmS $screen_name7
cmd7=$"php -f /var/www/html/v1/get_hq/get_hq_dbcbtc_huobi.php";
screen -x -S $screen_name7 -p 0 -X stuff "$cmd7"
screen -x -S $screen_name7 -p 0 -X stuff $'\n'
screen -x -S $screen_name7 -p 0 -X stuff "exit"
#
screen_name8=$"DBC_hq_kucoin"
screen -dmS $screen_name8
cmd8=$"php -f /var/www/html/v1/get_hq/get_hq_dbcbtc_kucoin.php";
screen -x -S $screen_name8 -p 0 -X stuff "$cmd8"
screen -x -S $screen_name8 -p 0 -X stuff $'\n'
screen -x -S $screen_name8 -p 0 -X stuff "exit"
