{
  pkgs,
  host,
  ...
}: {

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
