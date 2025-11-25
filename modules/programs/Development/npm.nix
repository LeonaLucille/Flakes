{pkgs, ...}: {
  home.packages = with pkgs; [
    nodejs
    nil
    alejandra
  ];
}
