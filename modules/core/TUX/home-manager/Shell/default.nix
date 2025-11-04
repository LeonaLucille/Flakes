{pkgs, ...}: {
  imports = [
    ./direnv.nix
    ./bat.nix
  ./fish.nix
  ./kitty.nix
  ./lsd.nix
  ./nvim.nix
  ./starship.nix
  ./yazi.nix
  ];
}
