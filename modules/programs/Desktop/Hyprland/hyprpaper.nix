{
  pkgs,
  host,
  ...
}: {
  home.file = {
    "/home/ltechel/Pictures/Wallpapers" = {
      source = ../../../../images;
      recursive = true;
    };
  };

  services.hyprpaper = {
    enable = false;

    settings = {
      preload = ["/home/ltechel/Pictures/Wallpapers/currents.jpg"];
      wallpaper = [
        ", /home/ltechel/Pictures/Wallpapers/currents.jpg
      "
      ];
    };
  };
}
