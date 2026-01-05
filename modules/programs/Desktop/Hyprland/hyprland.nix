{
  pkgs,
  config,
  host,
  ...
}: let
  stylix = config.lib.stylix.colors;
  inherit
    (import ./machines/${host}/variables.nix)
    ;
in {
  wayland.windowManager.hyprland = {
    enable = true;
    systemd = {
      enable = true;
      enableXdgAutostart = true;
      variables = ["--all"];
    };

    xwayland = {
      enable = true;
    };
    settings = {
      "$term" = "kitty";
      "$browser" = "firefox";
      "$menu" = "rofi -show drun";
      "$filemanager" = "yazi";
      "$lock" = "hyprlock";

      general = {
        gaps_in = 5;
        gaps_out = 20;
        border_size = 2;
        "col.active_border" = "rgb(${stylix.base0D})";
        "col.inactive_border" = "rgb(${stylix.base03})";
        resize_on_border = true;
        allow_tearing = false;
        layout = "dwindle";
      };

      misc = {
        disable_hyprland_logo = true;
        disable_splash_rendering = true;
      };

      dwindle = {
        pseudotile = true;
        preserve_split = true;
        force_split = 2;
      };

      decoration = {
        rounding = 10;
        active_opacity = 1.0;
        inactive_opacity = 1.0;
        shadow = {
          enabled = true;
          range = 4;
          render_power = 3;
          #color = "rgb(${config.lib.stylix.colors.base00})";
        };
        blur = {
          enabled = true;
          size = 3;
          passes = 1;
          vibrancy = 0.1696;
        };
      };

      master = {
        new_status = "master";
        new_on_top = 1;
        mfact = 0.5;
      };

      exec-once = [
      ];

      input = {
        kb_layout = "de";
      };
    };
    extraConfig = "
      monitor=desc:XEC MFG27F4Q,highrr,0x0, auto
      monitor=desc:AOC 2460G5 0x0002B2D6, 1920x1080@74.99Hz, auto-left, auto
      xwayland {
  force_zero_scaling = true
}

      ";
  };
}
