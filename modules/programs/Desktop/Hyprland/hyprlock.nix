{pkgs, ...}: {
  programs.hyprlock = {
    enable = true;

    settings = {
      animations = {
        enabled = true;
        fade_in = {
          duration = 300;
          bezier = "easeOutQuint";
        };
        fade_out = {
          duration = 300;
          bezier = "easeOutQuint";
        };
      };
      background = {
        path = "~/Pictures/Wallpapers/currents.jpg";
        blur_passes = 3;
        blur_size = 8;
      };

      input-field = {
        placeholder_text = "Input password";
        size = "250,60";
        outline_thickness = 0;
        dots_size = 0.25;
        dots_spacing = 0.55;
        dots_center = true;
        dots_rounding = -1;
        position = "0,-200";
        halign = "center";
        valign = "center";
      };

      label = {
        text = "$TIME";
        position = "0,200";
        font_size = "95";
        halign = "center";
        valign = "center";
      };
    };
  };
}
