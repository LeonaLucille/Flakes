{pkgs, ...}: {
  environment.systemPackages = with pkgs; [
    pulseaudio
  ];
  services.jack = {
    jackd.enable = true;
    alsa.enable = false;
    loopback = {
      enable = true;
    };
  };
  hardware.pulseaudio.package = pkgs.pulseaudio.override {jackaudioSupport = true;};
}
