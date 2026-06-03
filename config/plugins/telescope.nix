# This file provides fuzzy search for files and commands.
{
  plugins.telescope.enable = true;

  keymaps = [
    {
      mode = "n";
      key = "<leader><space>";
      action = "<cmd>Telescope find_files<CR>";
      options.desc = "Find Files";
    }
  ];
}
