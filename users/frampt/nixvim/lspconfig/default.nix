{...}: {
  imports = [
    ./asm_lsp.nix
    ./bashls.nix
    ./clangd.nix
    ./dockerls.nix
    ./gopls.nix
    ./hls.nix
    ./jsonls.nix
    ./lua_ls.nix
    ./marksman.nix
    ./neocmake.nix
    ./nil_ls.nix
    ./ocamllsp.nix
    ./pylsp.nix
    ./rust_analyzer.nix
    ./texlab.nix
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
