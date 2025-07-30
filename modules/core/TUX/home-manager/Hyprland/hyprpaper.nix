{pkgs, ...}: {

  home.file = {
    "Pictures/Wallpapers" = {
      source = ../../../../../images;
      recursive = true;
    };
  };



  services.hyprpaper = {
    enable = true;

    settings = {
      preload = ["~/Pictures/Wallpapers/invent.jpeg"];
      wallpaper = [
        ",~/Pictures/Wallpapers/invent.jpeg"
      ];
    };
  };
}
