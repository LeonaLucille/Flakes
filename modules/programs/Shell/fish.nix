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
      direnv hook fish | source
      if status is-login
      			exec Hyprland
      end
      if status is-interactive
        set -x GPG_TTY (tty)
        set -x SSH_AUTH_SOCK (gpgconf --list-dirs agent-ssh-socket)
        gpgconf --launch gpg-agent
      end

    '';
    shellAliases = {
      cat = "bat";
    };
  };
}
