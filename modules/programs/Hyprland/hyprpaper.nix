{pkgs, ...}: {
  services.hyprpaper = {
    enable = true;

    settings = {
      preload = ["/home/ltechel/Documents/Flakes/images/invent.jpeg"];
      wallpaper = [
        ",/home/ltechel/Documents/Flakes/images/invent.jpeg"
      ];
    };
  };
}
