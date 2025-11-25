{pkgs, ...}:
{
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
background = [
  {
    path = "~/Pictures/Wallpapers/currents.jpg";
      blur_passes = 3;
      blur_size = 8;
  }
  ];

    };
  };
}