function mountC

	switch $argv
		case -l or l 
			sudo mount /dev/sda2 /mnt/driveC/ -o fmask=111
		case -u or u 
			sudo mount /dev/sda2 /mnt/driveC/ 
		case '*'
			echo "Invalid argv"
	end


end
