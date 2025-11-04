{ pkgs
, lib
, ...
}: {
  programs.bat = {
    enable = true;
    config = {
      pager = "less -FR";
      # other styles available and cane be combined
      #  style = "numbers,changes,headers,rule,grid";
      style = "full";
      # Bat has other thems as well
        };
    extraPackages = with pkgs.bat-extras; [
      batman
      batpipe
      batgrep
    ];
  };

}
