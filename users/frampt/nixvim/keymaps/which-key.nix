{...}: {
  # This is technically a plugin, but it makes more sense to place it here
  programs.nixvim.plugins.which-key = {
    enable = true;

    lazyLoad.settings = {
      event = "VimEnter";
    };

    settings = {
      delay = 0;
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
}
