{host, ...}: let
  inherit (import ../../../machines/${host}/variables.nix) consoleKeymap;
in {
  services.xserver = {
    enable = false;
    xkb = {
      layout = "${consoleKeymap}";
      variant = "";
    };
  };
}
