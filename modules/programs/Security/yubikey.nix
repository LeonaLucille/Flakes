{pkgs, ...}: {
  home.packages = with pkgs; [
    libfido2
    opensc
    gnupg
    pcsclite
  ];

  hardware.gpgSmartcards.enable = true;
  services = {
    pcscd.enable = true;
    yubikey-agent.enable = true;
  };

  programs.gnupg.agent = {
    enable = true;
    enableSSHSupport = true;
  };
}
