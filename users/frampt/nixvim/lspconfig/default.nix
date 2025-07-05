{pkgs, ...}: {
  imports = [
    ./lua_ls.nix
    ./nil_ls.nix
  ];
  programs.nixvim = {
    # Dependencies
    plugins = {
      # cmp-nvim-lsp.enable = true;
      fidget.enable = true; # Hi john!

      lsp.enable = true;
    };
  };
}
