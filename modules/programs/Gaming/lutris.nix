{pkgs, ...}: {
  home.packages = with pkgs; [
    lutris
    discord
    vintagestory
  ];

  nixpkgs.config = {
    allowUnfree = true;
    permittedInsecurePackages = [
      "dotnet-runtime-7.0.20"
    ];
  };
}
