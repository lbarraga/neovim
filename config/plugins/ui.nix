{
  colorschemes.catppuccin.enable = true;

  plugins = {
    lualine.enable = true;
    web-devicons.enable = true;

    noice = {
      enable = true;
      settings.presets = {
        bottom_search = true;
        command_palette = true;
        long_message_to_split = true;
      };
    };

    indent-blankline = {
      enable = true;
      settings = {
        scope.enabled = false;
        exclude.filetypes = ["dashboard"];
      };
    };

    mini = {
      enable = true;
      modules.indentscope = {
        symbol = "│";
        options.try_as_border = true;
        draw.animation.__raw = "require('mini.indentscope').gen_animation.none()";
      };
    };

    neo-tree = {
      enable = true;
      settings = {
        close_if_last_window = true;
        window.mappings = {
          "l" = "open";
          "h" = "close_node";
        };
      };
    };

    dressing = {
      enable = true;
      settings.select = {
        backend = ["builtin"];
        builtin.relative = "cursor";
      };
    };

    dashboard = {
      enable = true;
      settings = {
        theme = "doom";
        config = {
          header = [
            ""
            ""
            ""
            ""
            ""
            ""
            "                                                       "
            " ███╗   ██╗ ███████╗ ██████╗  ██╗   ██╗ ██╗ ███╗   ███╗"
            " ████╗  ██║ ██╔════╝██╔═══██╗ ██║   ██║ ██║ ████╗ ████║"
            " ██╔██╗ ██║ █████╗  ██║   ██║ ██║   ██║ ██║ ██╔████╔██║"
            " ██║╚██╗██║ ██╔══╝  ██║   ██║ ╚██╗ ██╔╝ ██║ ██║╚██╔╝██║"
            " ██║ ╚████║ ███████╗╚██████╔╝  ╚████╔╝  ██║ ██║ ╚═╝ ██║"
            " ╚═╝  ╚═══╝ ╚══════╝ ╚═════╝    ╚═══╝   ╚═╝ ╚═╝     ╚═╝"
            "                                                       "
          ];
          center = [
            {
              action = "enew";
              desc = " New File";
              icon = " ";
              key = "n";
            }
            {
              action = "lua require('persistence').load()";
              desc = " Restore Session";
              icon = " ";
              key = "s";
            }
            {
              action = "qa";
              desc = " Quit";
              icon = " ";
              key = "q";
            }
          ];
        };
      };
    };
  };
}
