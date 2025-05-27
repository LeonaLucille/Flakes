{host, ...}: {
  imports = [
    ../../machines/${host}
    ../../modules/drivers/amd.nix
    ../../modules/core
  ];
  # Enable GPU Drivers
  drivers.amdgpu.enable = true;
}
