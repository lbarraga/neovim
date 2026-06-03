{
  keymaps = [
    {
      mode = "i";
      key = "jk";
      action = "<Esc>";
      options.desc = "Escape insert mode";
    }
    {
      mode = ["n" "i" "v"];
      key = "<C-s>";
      action = "<cmd>w<cr><esc>";
      options.desc = "Save file";
    }
    {
      mode = "n";
      key = "<leader>e";
      action = "<cmd>Neotree toggle<CR>";
      options.desc = "Toggle File Explorer";
    }
    {
      mode = "n";
      key = "<leader><space>";
      action = "<cmd>Telescope find_files<CR>";
      options.desc = "Find Files";
    }
    {
      mode = "n";
      key = "<C-h>";
      action = "<C-w>h";
      options.desc = "Go to left window";
    }
    {
      mode = "n";
      key = "<C-l>";
      action = "<C-w>l";
      options.desc = "Go to right window";
    }
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
    {
      mode = "n";
      key = "qq";
      action = "<cmd>qa<cr>";
      options.desc = "Quit all";
    }
  ];
}
