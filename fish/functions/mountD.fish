function mountD
	switch $argv
		case -l or l 
			sudo mount /dev/sda5 /mnt/driveD/ -o fmask=111
		case -u or u 
			sudo mount /dev/sda5 /mnt/driveD/ 
		case '*'
			echo "Invalid argv"
	end
end
