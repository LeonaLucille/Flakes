{pkgs, ...}: {
  home.packages = with pkgs; [
    lutris
    discord
    vintagestory
    nfs-utils
  ];

  nixpkgs.config = {
    allowUnfree = true;
    permittedInsecurePackages = [
      "dotnet-runtime-7.0.20"
    ];
  };
}
