{pkgs, ...}: {
  programs.vscode = {
    enable = true;
    package = pkgs.vscodium;
    profiles.default.extensions = with pkgs.vscode-extensions; [
      # Linter/Formatter
      esbenp.prettier-vscode
      kamadorueda.alejandra

      # Languages
      bbenoist.nix
      golang.go
      ms-python.python
      svelte.svelte-vscode
      bradlc.vscode-tailwindcss

      # Direnv
      mkhl.direnv
      arrterian.nix-env-selector

      # Pandoc
      chrischinchilla.vscode-pandoc
      garlicbreadcleric.pandoc-markdown-syntax
    ];
  };
}
