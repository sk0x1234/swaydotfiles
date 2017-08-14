function mountE

	switch $argv
		case -l or l  
			sudo mount /dev/sda6 /mnt/driveE/ -o fmask=111
		case -u or u 
			sudo mount /dev/sda6 /mnt/driveE/ 
		case '*'
			echo "Invalid argv"
	end


end
