{pkgs, ...}: {
  programs.kitty = {
    enable = true;
    settings = {
      enabled_layouts = "splits";
      confirm_os_window_close = 0;
      cursor_trail = 1;
      #			background_opacity = 0.5;
    };
  };
}
