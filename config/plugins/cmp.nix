# This file configures the autocomplete popup menu.
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

  extraConfigLua = ''
    local cmp_autopairs = require('nvim-autopairs.completion.cmp')
    local cmp = require('cmp')
    cmp.event:on('confirm_done', cmp_autopairs.on_confirm_done())
  '';
}
