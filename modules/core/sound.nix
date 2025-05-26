{pkgs, ...}: {
  environment.systemPackages = with pkgs; [
    pulseaudio
  ];

  hardware.pulseaudio.package = pkgs.pulseaudio.override {jackaudioSupport = true;};
}
