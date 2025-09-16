{pkgs, ...}: {
  home.packages = with pkgs; [
    androidenv.androidPkgs.androidsdk
    android-tools
  ];
}
