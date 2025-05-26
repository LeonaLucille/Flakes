{pkgs, ...}:{
	fonts = {
		packages = with pkgs; [
		  noto-fonts-emoji
      		  noto-fonts-cjk-sans
      		  font-awesome
      		  material-icons
		  nerd-fonts.jetbrains-mono
		  nerd-fonts.symbols-only
		];
		};



}
