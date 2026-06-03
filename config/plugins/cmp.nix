{
  plugins.cmp = {
    enable = true;
    autoEnableSources = true;
    settings = {
      window = {
        completion.border = "rounded";
        documentation.border = "rounded";
      };
      sources = [
        {name = "nvim_lsp";}
        {name = "path";}
      ];
      mapping = {
        "<CR>" = "cmp.mapping.confirm({ select = true })";
        "<Tab>" = "cmp.mapping(cmp.mapping.select_next_item(), {'i', 's'})";
        "<S-Tab>" = "cmp.mapping(cmp.mapping.select_prev_item(), {'i', 's'})";
        "<C-Space>" = "cmp.mapping.complete()";
        "<C-e>" = "cmp.mapping.abort()";
      };
    };
  };
}
