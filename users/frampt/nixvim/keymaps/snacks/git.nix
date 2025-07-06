{...}: {
  programs.nixvim.keymaps = [
    {
      mode = "n";
      key = "<leader>gb";
      action = "<cmd> lua Snacks.picker.git_branches()<CR>";
      options.desc = "[b]ranches";
    }
    {
      mode = "n";
      key = "<leader>gB";
      action = "<cmd> lua Snacks.gitbrowse()<CR>";
      options.desc = "[B]rowse";
    }
    {
      mode = "n";
      key = "<leader>gd";
      action = "<cmd> lua Snacks.picker.git_diff()<CR>";
      options.desc = "[d]iff";
    }
    {
      mode = "n";
      key = "<leader>gf";
      action = "<cmd> lua Snacks.picker.git_log_file()<CR>";
      options.desc = "Log [f]ile";
    }
    {
      mode = "n";
      key = "<leader>gg";
      action = "<cmd> lua Snacks.lazygit()<CR>";
      options.desc = "lazy[g]it";
    }
    {
      mode = "n";
      key = "<leader>gl";
      action = "<cmd> lua Snacks.picker.git_log()<CR>";
      options.desc = "[l]ogs";
    }
    {
      mode = "n";
      key = "<leader>gL";
      action = "<cmd> lua Snacks.picker.git_log_line()<CR>";
      options.desc = "Log [L]ine";
    }
    {
      mode = "n";
      key = "<leader>gs";
      action = "<cmd> lua Snacks.picker.git_status()<CR>";
      options.desc = "[s]tatus";
    }
    {
      mode = "n";
      key = "<leader>gS";
      action = "<cmd> lua Snacks.picker.git_stash()<CR>";
      options.desc = "[S]tash";
    }
  ];
}
