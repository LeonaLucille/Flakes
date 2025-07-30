{pkgs,lib,...}:

{
  programs.zsh = {
    enable = true;
    autosuggestion = {
      enable = true;
      strategy = ["completion"];
    };
    
    enableCompletion = true;
    syntaxHighlighting = {
      enable = true;
    };

    historySubstringSearch.enable = true;

    history = {
      ignoreDups = true;
      save = 10000;
      size = 10000;
    };

    oh-my-zsh = {
      enable = true;

      theme = "robbyrussell";
      plugins = [
        "git"
      ];
    };
  };


  programs.starship.enable = true;
}