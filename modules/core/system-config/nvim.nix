{pkgs,...}: 
{

programs.neovim = {
	enable = true;
	configure = {



	customRC =
	''
	colorscheme blue
	set shiftwidth=2
	set expandtab
	set tabstop=4
	'';
};
};


}
