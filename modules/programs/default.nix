{pkgs, ...}: {
  imports = [
    ./Audio
    ./Development
    ./Gaming
    ./Docs
    ./Shell
    ./stylix.nix
    ./xdg.nix
    ./Security
  ];
}
