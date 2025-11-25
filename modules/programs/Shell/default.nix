{pkgs, ...}: {
  imports = [
    #  ./ld.nix
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
