{pkgs, ...}: {
  imports = [
    ./Audio
    ./Desktop
    ./Development
    ./Docs
    ./Gaming
    ./stylix.nix
    ./xdg.nix
    ./Security
    ./Shell
    ./Work
  ];
}
