{
  pkgs,
  lib,
  host,
  config,
  ...
}: let
  inherit (import ../../machines/${host}/variables.nix);
in
  with lib; {
    programs.waybar = {
      enable = true;

      settings = [
        {
          layer = "top";
          position = "top";
          spacing = 4;
          modules-left = ["group/left"];
          modules-center = ["group/center"];
          modules-right = ["group/right"];

          "group/left" = {
            modules = ["hyprland/workspaces"];
            orientation = "horizontal";
          };

          "group/center" = {
            modules = ["hyprland/window"];
            orientation = "horizontal";
          };
          "group/right" = {
            modules = ["mpris" "clock" "battery" "custom/notification" "custom/power"];
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
            default = "";
            active = "";
           };
          };
          
          "hyprland/window" = {
           format = "{title}";
           max-length = 40;
           all-outputs = true;
          };

          "clock" = {
            format = "{:%d/%m/%Y-%H:%M}";
            tooltip = false;
          };

          "custom/power" = {
            format = "";
            on-click = "wlogout";
            on-click-right = "hyprlock";
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
            format = "{icon} {capacity}";
            format-icons = 
              ["" "" "" "" "" "" "" ""];
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

      style = concatStrings [
        ''
          * {
              font-family: JetBrainsMono Nerd Font Mono;
              border: none;
              border-radius: 0px;
              font-weight: bold;
              font-size: 15px;
          }

          window#waybar {
            background: #${config.lib.stylix.colors.base00};
            color: #${config.lib.stylix.colors.base05};
            }


          #clock {
            font-weight: bold;
            padding: 0px 10px;
            color: #${config.lib.stylix.colors.base00};
            background: #${config.lib.stylix.colors.base0E};
          }

          #custom-power {
            color: #${config.lib.stylix.colors.base02};
            padding: 0px 10px;

          }
        ''
      ];
    };
  }
