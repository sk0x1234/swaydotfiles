function mountWD

	switch $argv
		case -l or l 
			sudo mount /dev/sdb1 /mnt/driveWD/ -o fmask=111
		case -u or u 
			sudo mount /dev/sdb1 /mnt/driveWD/ 
		case '*'
			echo "Invalid argv"
	end


end
