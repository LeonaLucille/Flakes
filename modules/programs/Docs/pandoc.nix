{pkgs, ...}: {
  home.packages = with pkgs; [
    texliveFull
    mermaid-filter
  ];

  programs.pandoc = {
    enable = true;
  };
}
