{pkgs,...}: {

programs.kitty.enable = true;
	
	
		home.packages = with pkgs; [
		neovim
		firefox
];
}
