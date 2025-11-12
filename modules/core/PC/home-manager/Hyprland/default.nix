{pkgs, ...}: {
  imports = [
    ./hypridle.nix
    ./hyprlock.nix
    ./sway.nix
    ./hyprland.nix
    ./animations.nix
    ./waybar.nix
    ./binds.nix
    ./rofi.nix
    ./hyprpaper.nix
    ./wlogout.nix
  ];
}
