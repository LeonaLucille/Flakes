{...}: let
  inherit;
in {
  wayland.windowManager.hyprland.settings = {
    "$mainMod" = "SUPER";
    bind = [
      # Kill application
      "$mainMod, C, killactive"

      # Execute Application
      "$mainMod, Return, exec, $term"
      "$mainMod, Q, exec, $term"
      "$mainMod, B, exec, $browser"
      "$mainMod, R, exec, $menu"
      "$mainMod, L, exec, $lock"
      # Exit Hyprland
      "$mainMod, M, exit"
      # Animations
      "$mainMod, F, fullscreen"
      "$mainMod, V, togglefloating"
      "$mainMod, P, pseudo"
      "$mainMod, J, togglesplit"

      "$mainMod, S, togglespecialworkspace, magic"
      "$mainMod SHIFT, S, movetoworkspace, special:magic"

      "ALT, Tab, cyclenext"
      "ALT, Tab, bringactivetotop"
    ];

    bindm = [
      "$mainMod, mouse:272, movewindow"
      "$mainMod, mouse:273, resizewindow"
    ];
  };
}
