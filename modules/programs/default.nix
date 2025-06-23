{pkgs, ...}: {
  imports = [
    ./Gaming
    ./Docs
    ./Shell
    ./stylix.nix
    ./xdg.nix
    ./Security
  ];
}
