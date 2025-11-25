{
  pkgs,
  lib,
  ...
}: {
  programs.starship = {
    enable = true;
    settings = {
      format = lib.concatStrings [
        "$os"
        "$username"
        "$hostname"
      ];
      right_format = lib.concatStrings [
        "$directory"
        "$vcsh"
        "$git_branch"
        "$git_commit"
        "$git_state"
        "$git_status"
        "$time"
        "$nix_shell"
      ];
      os = {
        disabled = false;
      };

      time = {
        disabled = false;
      };

      hostname = {
        ssh_only = false;
      };

      username = {
        show_always = true;
        format = lib.concatStrings [
          "[$user]"
          "($style)"
          "@"
        ];
      };
    };
  };
}

