{...}: {
  programs.nixvim = {
    keymaps = [
      # ESC turns off highlights
      {
        mode = "n";
        key = "<Esc>";
        action = "<cmd>nohlsearch<CR>";
      }

      # [[ Buffers/Windows ]]

      # <C-hjkl> for navigating windows
      {
        mode = "n";
        key = "<C-h>";
        action = "<C-w><C-h>";
        options.desc = "Move focus left";
      }
      {
        mode = "n";
        key = "<C-j>";
        action = "<C-w><C-j>";
        options.desc = "Move focus below";
      }
      {
        mode = "n";
        key = "<C-k>";
        action = "<C-w><C-k>";
        options.desc = "Move focus above";
      }
      {
        mode = "n";
        key = "<C-l>";
        action = "<C-w><C-l>";
        options.desc = "Move focus right";
      }
    ];

    # This is technically a plugin, but I'll put it here
    plugins.which-key = {
      enable = true;
      settings = {
        spec = [
          {
            __unkeyed-1 = "<leader>l";
            group = "[l]sp";
            mode = ["n" "v"];
          }
          {
            __unkeyed-1 = "<leader>s";
            group = "[s]earch";
            mode = ["n" "v"];
          }
          {
            __unkeyed-1 = "<leader>f";
            group = "[f]ile";
            mode = ["n" "v"];
          }
          {
            __unkeyed-1 = "<leader>t";
            group = "[t]oggle";
            mode = ["n" "v"];
          }
          {
            __unkeyed-1 = "<leader>g";
            group = "[g]it";
            mode = ["n" "v"];
          }
          {
            __unkeyed-1 = "<leader>gh";
            group = "[h]unk";
            mode = ["n" "v"];
          }
          {
            __unkeyed-1 = "<leader>u";
            group = "[u]i";
            mode = ["n" "v"];
          }
          {
            __unkeyed-1 = "<leader>d";
            group = "[d]ebug";
            mode = ["n" "v"];
          }
          {
            __unkeyed-1 = "<leader>b";
            group = "[b]uffer";
            mode = ["n" "v"];
          }

          {
            __unkeyed-1 = "<leader>x";
            group = "Quickfi[x]/Diagnostics";
            mode = ["n" "v"];
          }

          {
            __unkeyed-1 = "g";
            group = "[g]oto";
            mode = ["n" "v"];
          }
          {
            __unkeyed-1 = "[";
            group = "Prev";
            mode = ["n" "v"];
          }
          {
            __unkeyed-1 = "<leader>";
            group = "Next";
            mode = ["n" "v"];
          }
        ];
      };
    };
  };
}
