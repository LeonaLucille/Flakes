{pkgs, ...}:
{
  programs.yazi = {
    enable = true;
    enableFishIntegration = true;
    plugins =    {
      git = pkgs.yaziPlugins.git;
      full-border= pkgs.yaziPlugins.full-border;
    };

  



initLua = ''
        require("full-border"):setup()
          require("git"):setup()
    '';


  };
}