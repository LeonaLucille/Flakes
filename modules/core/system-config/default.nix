{inputs, ...}: {
  imports = [
    #    ./syncthing.nix
    ./virtualization.nix
    ./fonts.nix
    ./packages.nix
    ./user.nix
    ./stylix.nix
    ./xserver.nix
    ./sound.nix
    ./steam.nix
    ./security.nix
    # ./vscodium.nix
    inputs.stylix.nixosModules.stylix
  ];
}
