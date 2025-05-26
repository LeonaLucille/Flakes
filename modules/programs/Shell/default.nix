{pkgs, ...}: {
  imports = [
    ./kitty.nix
    ./fish.nix
    ./nvim.nix
    ./ssh.nix
  ];
}
