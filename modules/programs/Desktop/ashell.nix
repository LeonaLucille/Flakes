{...}: {
  programs.quickshell.enable = true;
  programs.ashell = {
    enable = false;
    settings = {
      enable_esc_key = true;
      modules = {
        left = [
          "Workspaces"
          "Clock"
        ];
        center = [
          "MediaPlayer"
          "WindowTitle"
        ];
        right = [
          "Clipboard"
          "Settings"
        ];
      };

      window_title = {
        mode = "Title";
      };
      clipboard_cmd = "cliphist-rofi-img | wl-copy";

      settings = {
        shutdown_cmd = "shutdown now";
        suspend_cmd = "systemctl suspend";
        reboot_cmd = "systemctl reboot";
        logout_cmd = "loginctl kill-user $(whoami)";

        lock_cmd = "hyprlock &";
        remove_airplane_btn = true;
        remove_idle_btn = true;
      };
    };
  };
}
