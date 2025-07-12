{...}: {
  programs.nixvim = {
    autoGroups = {
      "lint" = {
        clear = true;
      };
    };

    plugins.lint = {
      enable = true;
      # lazyLoad.settings = {
      #   event = ["BufReadPre" "BufNewFile"];
      # };

      lintersByFt = {
        c = ["clangtidy"];
        haskell = ["hlint"];
        bash = ["shellcheck"];
        markdown = ["markdownlint"];
      };

      autoCmd = {
        group = "lint";
        event = ["BufEnter" "BufWritePost" "InsertLeave"];
        callback.__raw = "
          function()
            if vim.opt_local.modifiable:get() then
              require('lint').try_lint()
            end
          end
        ";
      };
    };
  };
}
