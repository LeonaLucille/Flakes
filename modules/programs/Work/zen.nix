{inputs,...}:
{
  # home.nix
  imports = [
    inputs.zen-browser.homeModules.beta
    #inputs.nix-ld.homeModules.dev
    # or inputs.zen-browser.homeModules.twilight
    # or inputs.zen-browser.homeModules.twilight-official
  ];

  programs.zen-browser.enable = true;
}