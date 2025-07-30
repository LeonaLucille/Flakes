{pkgs, ...}: {
  imports = [
    ./Development
    ./Gaming
    ./Docs
    ./Shell
    ./stylix.nix
    ./xdg.nix
    ./Security
  ];
}
