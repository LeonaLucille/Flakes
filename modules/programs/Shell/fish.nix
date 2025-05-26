{pkgs, ...}: {
  programs.man.generateCaches = true;
  programs.nix-index = {
    enable = true;
    enableFishIntegration = true;
  };

  programs.fish = {
    enable = true;
    generateCompletions = true;
    interactiveShellInit = ''
      if status is-login
      			exec Hyprland
      end

      set -x GPG_TTY (tty)
      set -x SSH_AUTH_SOCK (gpgconf --list-dirs agent-ssh-socket)
      gpgconf --launch gpg-agent

    '';
  };
}
