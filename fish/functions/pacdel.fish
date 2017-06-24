function pacdel
	sudo pacman -Rns (pacman -Qqdt)
end
