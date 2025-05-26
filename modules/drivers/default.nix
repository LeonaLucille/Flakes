{pkgs, ...}: {
  imports = [
    ./amd.nix
    ./nvidia.nix
    ./vm-guest-services.nix
  ];
}
