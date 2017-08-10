function wifi
	switch $argv
		case up or u
			sudo ip link set wlp2s0 up
		case down or d
			sudo ip link set wlp2s0 down
		case '*'
			echo "invalig argv"
		end
end
