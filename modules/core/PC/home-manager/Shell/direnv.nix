{pkgs,...}: 
{
  home.packages = [
  pkgs.devenv];

programs = {
    direnv = {
      enable = true;
      enableFishIntegration = true;
      nix-direnv.enable = true;
    };
  };
}

