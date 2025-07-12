{...}: {
  programs.nixvim.plugins.conform-nvim = {
    lazyLoad.settings = {
      cmd = "ConformInfo";
    };

    settings = {
      notify_on_error = false;
      format_on_save = false;

      default_format_opts = {
        lsp_format = "fallback";
        timeout_ms = 500;
      };

      formatters_by_ft = {
        lua = ["stylua"];
        sh = ["shfmt"];
      };
    };
  };
}
