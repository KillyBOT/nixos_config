{...}: {
  programs.nixvim.plugins.treesitter = {
    enable = true;
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
