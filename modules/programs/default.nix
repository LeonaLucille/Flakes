{pkgs, ...}: {
  imports = [
    ./Audio
    ./Development
    ./Gaming
    ./Docs
    ./stylix.nix
    ./xdg.nix
    ./Security
    ./Work
  ];
}
