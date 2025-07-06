{...}: {
  programs.nixvim.plugins.lualine = {
    enable = true;
    settings = {
      sections = {
        lualine_a = ["mode"];
        lualine_b = ["branch" "diff" "diagnostics"];
        lualine_c = ["filename"];
        lualine_x = ["filetype" "encoding" "fileformat"];
        lualine_y = ["progress"];
        lualine_z = ["location"];
      };
    };
  };
}
