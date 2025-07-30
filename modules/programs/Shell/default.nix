{pkgs, ...}: {
  imports = [
    ./kitty.nix
    ./fish.nix
    ./nvim.nix
    ./starship.nix
    ./ssh.nix
    ./zsh.nix
  ];
}
