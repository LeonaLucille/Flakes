{
  pkgs,
  inputs,
  ...
}: {
  programs = {
    hyprland.enable = true;
    hyprland.withUWSM = true;
    gnupg.agent = {
      enable = true;
      enableSSHSupport = true;
    };
  };

  nixpkgs.config.allowUnfree = true;
  documentation.man.generateCaches = true;

  environment.systemPackages = with pkgs; [
    python3Full
    fish
    playerctl
    git
    spotify
    plymouth
  ];
}
