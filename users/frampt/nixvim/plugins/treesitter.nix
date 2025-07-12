{...}: {
  programs.nixvim.plugins.treesitter = {
    enable = true;

    lazyLoad.settings = {
      # This may not be the best way to do it,
      event = "VimEnter";
    };

    settings = {
      auto_install = true;
      highlight.enable = true;
      indent.enable = true;
      ensure_installed = [
        "bash"
        "c"
        "diff"
        "json"
        "lua"
        "luadoc"
        "luap"
        "markdown"
        "markdown_inline"
        "nix"
        "printf"
        "python"
        "query"
        "regex"
        "toml"
        "vim"
        "vimdoc"
        "xml"
        "yaml"
      ];
    };
  };
}
