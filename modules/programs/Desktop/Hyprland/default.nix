{pkgs, ...}: {
  imports = [
    ./animations.nix
    ./binds.nix
    ./hypridle.nix
    ./hyprland.nix
    ./hyprlock.nix
    ./hyprpaper.nix
  ];
}
