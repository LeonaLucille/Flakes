{
  pkgs,
  host,
  ...
}: {
  home.file = {
    "Pictures/Wallpapers/wallpaper.jpg" = {
      source = ../../../../../images/invent.jpeg;
    };
  };

  services.hyprpaper = {
    enable = true;

    settings = {
      preload = ["/home/ltechel/Pictures/Wallpapers/wallpaper.jpg"];
      wallpaper = [
        ", /home/ltechel/Pictures/Wallpapers/wallpaper.jpg
      "
      ];
    };
  };
}
