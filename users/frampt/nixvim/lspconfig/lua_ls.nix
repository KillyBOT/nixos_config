{...}: {
  programs.nixvim.plugins.lsp.servers.lua_ls = {
    enable = true;

    settings = {
      completion = {
        callSnippet = "Replace";
      };
    };
  };
}
