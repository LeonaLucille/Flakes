{
  pkgs,
  lib,
  host,
  config,
  username,
  ...
}: let
  inherit (import ../../machines/${host}/variables.nix);
  stylix = config.lib.stylix.colors;
in {
  programs.waybar = {
    enable = true;

    settings = [
      {
        ## General Settings
        layer = "top";
        position = "top";
        height = 40;
        spacing = 5;
        modules-left = ["group/left"];
        modules-center = ["group/center"];
        modules-right = ["group/right"];

        ## Active modules
        "group/left" = {
          modules = ["hyprland/workspaces"];
          orientation = "horizontal";
        };

        "group/center" = {
          modules = ["hyprland/window"];
          orientation = "horizontal";
        };
        "group/right" = {
          modules = ["mpris" "clock" "battery" "custom/notification"];
          orientation = "horizontal";
        };

        "mpris" = {
          format = "{player_icon} {dynamic}";
          interval = 1;
        };

        "hyprland/workspaces" = {
          all-outputs = true;
          format = "{icon}";
          format-icons = {
            default = "hui";
            active = "";
          };
        };

        "hyprland/window" = {
          format = "{title}";
          max-length = 20;
          min-length = 0;
          all-outputs = true;
        };

        "clock" = {
          format = "[{:%d/%m/%Y-%H:%M}]";
          tooltip = false;
        };

        "custom/notification" = {
          tooltip-format = "Left: Notifications\nRight: Do not disturb";
          format = "{icon}";
          format-icons = {
            notification = "<span rise='8pt'><span foreground='red'><sup></sup></span></span>";
            none = "";
            dnd-notification = "";
            dnd-none = "";
            inhibited-notification = "";
            dnd-inhibited-notification = "";
            dnd-inhibited-none = "";
          };

          return-type = "json";
          exec-if = "which swaync-client";
          exec = "swaync-client -swb";
          on-click = "swaync-client -op";
          on-click-right = "swaync-client -d -sw";
          escape = true;
        };

        "battery" = {
          states = {
            good = 95;
            warning = 30;
            critical = 20;
          };
          format = "{icon}  {capacity}";
          format-icons = ["" "" "" "" "" "" "" ""];
          on-click = "";
          on-click-right = "pkill waybar & hyprctl dispatch exec waybar";
        };

        "network" = {
          format-wifi = "";
          format-ethernet = "";
          format-linked = "";
          format-disconnected = "";
        };

        "bluetooth" = {
          format = "";
          format-disabled = "";
          format-connected = "";
          tooltip-format = "";
          tooltip-format-connected = "";
          tooltip-enumerate-connected = "";
          on-click = "kitty -e bluetui";
        };
      }
    ];

    style =
      lib.mkAfter
      ''
                             * {
                                 font-family: JetBrainsMono Nerd Font Mono;
                                 border: none;
                                 border-radius: 20px;
                                 font-weight: bold;
                                 font-size: 15px;
                             }

                             window#waybar {
                             background: transparent;
                               color: #${stylix.base05};

                               }

                             window#hyprland {
                               color: #${stylix.base05};

                             }
                             workspaces#hyprland{
                               color: #${stylix.base05};

                             }
                             #clock,
                             #battery,
                             #custom-notification {
                               font-weight: bold;
                               padding: 0px 10px;
                               color: #${stylix.base05};
                               background: transparent;
                             }

                             #custom-power {
                               color: @base01;
                               padding: 0px 10px;

                             }


                          .modules-center {
                               border: 2px solid;
              margin: 10px 0 0 0;
              padding: 0 10px 0 10px;
                             }
                          .modules-left {
                            margin: 10px 0 0 10px;
                    padding: 0 0 0 7px;
                               border: 2px solid;

                             }

                          .modules-right {
                            border: 2px solid;
        margin: 10px 10px 0 0;
        padding: 0 10px 0 10px;
        background: transparent;
                          }

      '';
  };
}
