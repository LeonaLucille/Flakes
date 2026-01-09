{...}: {
  services.wpaperd = {
    enable = false;
    settings = {
      default = {
        path = "/home/ltechel/Pictures/Wallpapers/thornhill.jpg";
        mode = "fit";
      };
    };
  };
}
