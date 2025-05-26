{pkgs, ...}: {
  imports = [
    ./hyprland.nix
    ./animations.nix
    ./waybar.nix
    ./binds.nix
    ./rofi.nix
  ];
}
