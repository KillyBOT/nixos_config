{...}: {
  programs.nixvim.plugins.lsp.servers.rust_analyzer = {
    enable = true;

    # We'll handle these separately
    installCargo = false;
    installRustc = false;
    installRustfmt = false;
  };
}
