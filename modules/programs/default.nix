{pkgs, ...}: {
  imports = [
    ./Gaming
    ./Shell
    ./Hyprland
    ./stylix.nix
    ./xdg.nix
    ./Security
  ];
}
