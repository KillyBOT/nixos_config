{...}: {
  programs.nixvim.keymaps = [
    {
      mode = "n";
      key = "<leader>bd";
      action = "<cmd>lua Snacks.bufdelete()<CR>";
      options.desc = "[d]elete";
    }
    {
      mode = "n";
      key = "<leader>bo";
      action = "<cmd>:bd<CR>";
      options.desc = "[D]elete buffer + winder";
    }
    {
      mode = "n";
      key = "<leader>bo";
      action = "<cmd>lua Snacks.bufdelete.other()<CR>";
      options.desc = "Delete [o]thers";
    }
    {
      mode = "n";
      key = "<leader>bp";
      action = "<cmd>BufferLineTogglePin<CR>";
      options.desc = "[p]in";
    }
    {
      mode = "n";
      key = "<leader>bP";
      action = "<cmd>BBufferLineGroupClose ungrouped<CR>";
      options.desc = "Delete non-[P]inned";
    }

    {
      mode = "n";
      key = "<S-h>";
      action = "<cmd>BufferLineCyclePrev<CR>";
      options.desc = "Prev buffer";
    }
    {
      mode = "n";
      key = "<S-l>";
      action = "<cmd>BufferLineCycleNext<CR>";
      options.desc = "Next buffer";
    }
    {
      mode = "n";
      key = "[b";
      action = "<cmd>BufferLineCyclePrev<CR>";
      options.desc = "Buffer";
    }
    {
      mode = "n";
      key = "]b";
      action = "<cmd>BufferLineCycleNext<CR>";
      options.desc = "Buffer";
    }
  ];
}
