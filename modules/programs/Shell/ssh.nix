{pkgs, ...}: 
{
  
  programs.gpg = {
    enable = true;
    scdaemonSettings = {
      disable-ccid = true;
    };
  };

  services.gpg-agent = {
    extraConfig = ''
      ttyname $GPG_TTY
    '';
  };
}
