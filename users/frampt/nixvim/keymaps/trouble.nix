{...}: {
  programs.nixvim.keymaps = [
    {
      mode = "n";
      key = "<leader>xx";
      action = "<cmd>Trouble diagnostics toggle<CR>";
      options.desc = "Diagnostics";
    }
    {
      mode = "n";
      key = "<leader>xX";
      action = "<cmd>Trouble diagnostics toggle<CR>";
      options.desc = "Buffer diagnostics";
    }
    {
      mode = "n";
      key = "<leader>xs";
      action = "<cmd>Trouble symbols toggle<CR>";
      options.desc = "LSP [s]ymbols";
    }
    {
      mode = "n";
      key = "<leader>xr";
      action = "<cmd>Trouble lsp toggle<CR>";
      options.desc = "LSP [r]eferences";
    }
    {
      mode = "n";
      key = "<leader>xL";
      action = "<cmd>Trouble loclist toggle<CR>";
      options.desc = "[L]ocation list";
    }
    {
      mode = "n";
      key = "<leader>xq";
      action = "<cmd>Trouble qflist toggle<CR>";
      options.desc = "[q]uickfix list";
    }
  ];
}
