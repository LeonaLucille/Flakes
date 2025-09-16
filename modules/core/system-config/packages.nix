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

  nixpkgs.config = {
    allowUnfree = true;
    android_sdk.accept_license = true;
    documentation.man.generateCaches = true;
  };
  environment.systemPackages = with pkgs; [
    python3Full
    fish
    playerctl
    git
    spotify
    plymouth
    terraform
    tailscale
    # vscodium
    guitarix
    libfido2
    opensc
    gnupg
    yubikey-manager
    firefox
  ];

  services.tailscale = {
    enable = true;
  };
}
