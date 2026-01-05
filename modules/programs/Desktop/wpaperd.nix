{...}: {
  services.wpaperd = {
    enable = true;
    settings = {
      default = {
        path = "/home/ltechel/Pictures/Wallpapers/thornhill.jpg";
        mode = "fit";
      };
    };
  };
}
