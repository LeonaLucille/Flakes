{pkgs, ...}: {
  home.packages = with pkgs; [
    libfido2
    opensc
    gnupg
    pcsclite
  ];
}