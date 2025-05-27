{host, ...}: {
  imports = [
    ../../machines/${host}
    ../../modules/core
  ];
  # Enable GPU Drivers
}
