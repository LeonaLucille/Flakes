{pkgs, ...}: {
  imports = [
    ./kitty.nix
    ./fish.nix
    ./nvim.nix
    ./starship.nix
    ./ssh.nix
    ./yazi.nix
    ./zsh.nix
  ];
}
