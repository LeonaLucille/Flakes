{pkgs,...}: {

programs.kitty = 
	{
		enable = true;
		settings = {
			enabled_layouts = "splits";
			confirm_os_window_close = 0;
		};
	};
}
