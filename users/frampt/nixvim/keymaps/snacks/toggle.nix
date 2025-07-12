{...}: {
  programs.nixvim.keymaps = [
    {
      mode = "n";
      key = "<leader>us";
      action = "<cmd>lua Snacks.toggle.option(\"spell\")<CR>";
      options.desc = "[s]pelling";
    }
  ];
}
