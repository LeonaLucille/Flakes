{...}: {
  imports = [
    ./hardware.nix
    ./nvidia.nix
    ../../modules/core/system-config
  ];
  drivers.nvidia.enable = true;
}
