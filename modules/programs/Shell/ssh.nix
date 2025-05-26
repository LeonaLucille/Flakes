{pkgs, ...}: {
  programs.gpg = {
    enable = true;
  };

  services.gpg-agent = {
    extraConfig = ''
      ttyname $GPG_TTY
    '';
  };
}
