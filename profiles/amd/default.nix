{host, ...}: {
  imports = [
    ../../machines/${host}
    ../../modules/drivers/nvidia.nix
    ../../modules/core
  ];
  # Enable GPU Drivers
  drivers.amdgpu.enable = true;
}
