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
      package = pkgs.waybar;

      settings = [
        {
          layer = "top";
          position = "top";
          modules-left = ["group/left"];
          modules-center = ["group/center"];
          modules-right = ["group/right"];

          "group/left" = {
            modules = ["mpris"];
            orientation = "horizontal";
          };

          "group/center" = {
            modules = ["clock" "hyprland/workspaces" "group/infos"];
            orientation = "horizontal";
          };
          "group/right" = {
            modules = ["custom/notification" "custom/power"];
            orientation = "horizontal";
          };

          "group/infos" = {
            orientation = "inherit";
            drawer = {
              transition-duration = 500;
              transition-left-to-right = false;
            };
            modules = ["battery" "bluetooth" "network"];
          };

          "hyprland/workspaces" = {
            format = "{icon}";
            on-click = "activate";
            format-icons = {
              default = "󰫣 ";
              active = "󰫢 ";
            };
          };

          "clock" = {
            format = "{:%d/%m/%Y - %H:%M}";
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
            format-charging = "";
            format-plugged = "";
            format-alt = "";
            format-icons = "";
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
          }
        ''
      ];
    };
  }
