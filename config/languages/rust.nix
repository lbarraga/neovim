{
  plugins.lsp.servers.rust_analyzer = {
    enable = true;
    installCargo = false;
    installRustc = false;
    settings.check.command = "clippy";
  };
  plugins.treesitter.settings.ensure_installed = ["rust"];
}
