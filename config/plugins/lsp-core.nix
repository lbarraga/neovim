# This file sets up the core language server rules and code actions.
{pkgs, ...}: {
  extraPackages = [pkgs.tree-sitter];

  plugins = {
    lsp.enable = true;

    conform-nvim = {
      enable = true;
      settings = {
        format_on_save = {
          lsp_fallback = true;
          timeout_ms = 500;
        };
      };
    };

    treesitter = {
      enable = true;
      settings.highlight.enable = true;
    };
  };

  keymaps = [
    {
      mode = "n";
      key = "<leader>ca";
      action = "<cmd>lua vim.lsp.buf.code_action()<cr>";
      options.desc = "Code Action";
    }
    {
      mode = "n";
      key = "<leader>cd";
      action = "<cmd>lua vim.diagnostic.open_float()<cr>";
      options.desc = "Line Diagnostics";
    }
  ];
}
