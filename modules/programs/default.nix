{pkgs, ...}: {
  imports = [
    ./Gaming
    ./Shell
    ./stylix.nix
    ./xdg.nix
    ./Security
  ];
}
