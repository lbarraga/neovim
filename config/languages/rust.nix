{
  # Rustaceanvim for the language server, type hints, and enabling all cargo features
  plugins.rustaceanvim = {
    enable = true;
    settings = {
      server = {
        default_settings = {
          "rust-analyzer" = {
            cargo = {
              allFeatures = true;
            };
            check = {
              command = "clippy";
            };
          };
        };
      };
    };
  };

  # Crates plugin for dependency management
  plugins.crates = {
    enable = true;
  };

  # Add crates to the autocompletion sources
  plugins.cmp.settings.sources = [
    {name = "crates";}
  ];

  # Syntax highlighting
  plugins.treesitter.settings.ensure_installed = ["rust"];

  extraConfigLua = ''
    vim.api.nvim_create_autocmd("LspAttach", {
      callback = function(args)
        local client = vim.lsp.get_client_by_id(args.data.client_id)
        if client and client.server_capabilities.inlayHintProvider and vim.lsp.inlay_hint then
          vim.lsp.inlay_hint.enable(true, { bufnr = args.buf })
        end
      end,
    })
  '';
}
