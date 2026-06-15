{
  colorschemes.catppuccin = {
    enable = true;
    settings = {
      custom_highlights = ''
        function(colors)
          return {
            LspInlayHint = { bg = "NONE", fg = colors.overlay0 },
          }
        end
      '';
    };
  };
}
