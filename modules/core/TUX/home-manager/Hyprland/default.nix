{pkgs, ...}: {
  imports = [
    ./hyprland.nix
    ./hyprlock.nix
    ./hyprpaper.nix
    ./rofi.nix

    ./animations.nix
    ./waybar.nix
    ./binds.nix
    ./wlogout.nix
  ];
}
