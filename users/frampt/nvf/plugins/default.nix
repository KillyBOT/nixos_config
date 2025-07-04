{pkgs, ...}: {
  imports = [
    ./lsp.nix
    ./languages.nix
    ./snacks.nix
  ];

  programs.nvf.settings.vim = {
    # Blink-cmp
    autocomplete.blink-cmp.enable = true;

    # Autopairs
    autopairs.nvim-autopairs.enable = true;

    # Comments
    comments.comment-nvim.enable = true;

    # DAP
    debugger.nvim-dap = {
      enable = true;

      ui = {
        enable = true;
        autoStart = true;
      };
    };

    # Gitsigns
    git = {
      enable = true;
      gitsigns.enable = true;
    };

    # todo highlighting
    notes.todo-comments.enable = true;

    # Lualine
    statusline.lualine.enable = true;

    # Bufferline
    tabline.nvimBufferline = {
      enable = true;
    };

    # Treesitter
    treesitter = {
      enable = true;
      fold = true;
      indent.enable = true;
    };

    visuals = {
      # Icons
      nvim-web-devicons.enable = true;
    };

    # extraPlugins = with pkgs.vimPlugins; {
    # };
  };
}
