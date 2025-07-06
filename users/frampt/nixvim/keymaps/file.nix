{...}: {
  programs.nixvim.keymaps = [
    {
      mode = "n";
      key = "<C-n>";
      action = "<cmd>enew<CR>";
      options.desc = "New";
    }
    {
      mode = "n";
      key = "<C-s>";
      action = "<cmd>w<cr><esc>";
      options.desc = "Save";
    }
  ];
}
