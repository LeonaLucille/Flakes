{host, ...}: {
  imports = [
    ../../machines/${host}
    ../../modules/drivers/nvidia.nix
    ../../modules/core
  ];
  # Enable GPU Drivers
  drivers.nvidia.enable = true;
}
