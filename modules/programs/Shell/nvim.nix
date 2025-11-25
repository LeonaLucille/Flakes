{
  inputs,
  config,
  pkgs,
  ...
}: {
  imports = [inputs.nixvim.homeModules.default];

  programs.nixvim = {
    enable = true;
    opts = {
      number = true;
    };

    plugins = {
      cmp = {
        enable = true;
        autoEnableSources = true;
        settings = {
          sources = [
            {name = "path";}
            {name = "nvim_lsp";}
            {name = "luasnip";}
            {name = "buffer";}
          ];
          mapping = {
            "<CR>" = "cmp.mapping.confirm({ select = true })";
            "<S-Tab>" = "cmp.mapping(cmp.mapping.select_prev_item(), {'i', 's'})";
            "<Tab>" = "cmp.mapping(cmp.mapping.select_next_item(), {'i', 's'})";
          };
        };
      };
      lsp = {
        enable = true;
        capabilities = "offsetEncoding = 'utf-16'";
        servers = {
          clangd.enable = true;
          gopls.enable = true;
          nixd.enable = true;
        };
      };
    };
  };
}
