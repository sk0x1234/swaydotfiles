function nessus
	set f $argv
	echo $f
	switch $f
	case stop
		sudo systemctl stop nessusd.service
		echo "nessus deamon is stoped on 8834 port"
	case start
		sudo systemctl start nessusd.service
		echo "nessus deamon is started on 8834 port"
	case status
		sudo systemctl status nessusd.service
	case '*'
		echo "wrong argv! "
	end

end
