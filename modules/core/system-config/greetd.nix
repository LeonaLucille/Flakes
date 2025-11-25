{ pkgs, 
...
}: 
{
  services.greetd = {
    enable = true;
    settings = {
      default_session = {
        command = "${pkgs.tuigreet}/bin/tuigreet --time --remember --cmd Hyprland"; # start Hyprland with a TUI login manager
      };
    };
  };
}

