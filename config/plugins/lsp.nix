{
  plugins = {
    lsp = {
      enable = true;
      servers = {
        nil_ls.enable = true;
        pyright.enable = true;
        ruff.enable = true;
        rust_analyzer = {
          enable = true;
          installCargo = false;
          installRustc = false;
          settings.check.command = "clippy";
        };
      };
    };

    conform-nvim = {
      enable = true;
      settings = {
        format_on_save = {
          lsp_fallback = true;
          timeout_ms = 500;
        };
        formatters_by_ft.nix = ["alejandra"];
      };
    };

    treesitter = {
      enable = true;
      settings = {
        ensure_installed = ["rust" "wit" "python" "nix"];
        highlight.enable = true;
      };
    };
  };
}
