{...}: {
  imports = [
    ./hardware.nix
    ./packages.nix
    ./drivers
    ../../modules/core/system-config
  ];
}
