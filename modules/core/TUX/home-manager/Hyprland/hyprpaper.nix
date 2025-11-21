{
  pkgs,
  host,
  ...
}: {
  home.file = {
    "Pictures/Wallpapers" = {
      source = ../../../../../images;
      recursive = true;
    };
  };

  services.hyprpaper = {
    enable = false;

    settings = {
      preload = ["/home/ltechel/Pictures/Wallpapers/loathe.jpg"];
      wallpaper = [
        ", /home/ltechel/Pictures/Wallpapers/loathe.jpg
      "
      ];
    };
  };
}
