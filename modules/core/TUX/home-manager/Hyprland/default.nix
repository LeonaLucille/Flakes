{pkgs, ...}: {
  imports = [
    ./hyprland.nix
    ./hyprlock.nix
    ./hyprpaper.nix
    ./hypridle.nix
    ./rofi.nix
    ./sway.nix
    ./animations.nix
    ./waybar.nix
    ./binds.nix
    ./wlogout.nix
  ];
}
