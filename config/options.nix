{pkgs, ...}: {
  vimAlias = true;
  viAlias = true;

  dependencies = {
    gcc.enable = true;
  };

  opts = {
    showmode = false;
    cmdheight = 0;
    number = true;
    relativenumber = true;
    pumheight = 5;
    undofile = true;
    autoindent = true;
    smartindent = true;
    expandtab = true;
    shiftwidth = 2;
    tabstop = 2;
  };

  diagnostic = {
    settings = {
      virtual_text = {
        prefix = "●";
        spacing = 4;
      };
      signs = true;
      underline = true;
      severity_sort = true;
    };
  };

  extraConfigLua = ''
    vim.api.nvim_create_autocmd("TextYankPost", {
      desc = "Highlight when yanking (copying) text",
      callback = function()
        vim.highlight.on_yank({ timeout = 200 })
      end,
    })

    -- Aggressively disable the active indent line on specific screens
    vim.api.nvim_create_autocmd({ "FileType", "BufEnter", "BufWinEnter" }, {
      pattern = { "dashboard", "neo-tree" },
      callback = function()
        vim.b.miniindentscope_disable = true
      end,
    })
  '';

  extraPackages = [pkgs.alejandra];
  globals.mapleader = " ";
  clipboard.register = "unnamedplus";
}
