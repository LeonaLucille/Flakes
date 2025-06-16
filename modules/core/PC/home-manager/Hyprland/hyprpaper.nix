{pkgs, ...}: {
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
