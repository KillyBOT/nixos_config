{...}: {
  programs.nixvim.plugins.lsp.servers.hls = {
    enable = true;

    # We'll install this separately
    installGhc = false;
  };
}
