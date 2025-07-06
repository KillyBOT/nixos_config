# TODO: Enforce that this can only be made if snacks is installed
{...}: {
  imports = [
    ./git.nix
    ./lsp.nix
    ./picker.nix
  ];
  programs.nixvim.keymaps = [
    {
      mode = "n";
      key = "<leader>e";
      action = "<cmd>lua Snacks.explorer()<CR>";
      options.desc = "File [e]xplorer";
    }
    {
      mode = "n";
      key = "<leader>n";
      action = "<cmd>lua Snacks.picker.notifications()<CR>";
      options.desc = "[n]otifications";
    }
    #TODO: map <leader>N to news
    {
      mode = "n";
      key = "<leader>u";
      action = "<cmd>lua Snacks.picker.undo()<CR>";
      options.desc = "[u]ndo history";
    }
    {
      mode = "n";
      key = "<leader>z";
      action = "<cmd>lua Snacks.zen()<CR>";
      options.desc = "[z]en mode";
    }
    {
      mode = "n";
      key = "<leader>Z";
      action = "<cmd>lua Snacks.zen.zoom()<CR>";
      options.desc = "[Z]oom";
    }
    {
      mode = "n";
      key = "<leader>,";
      action = "<cmd>lua Snacks.picker.buffers()<CR>";
      options.desc = "Buffers";
    }
    {
      mode = "n";
      key = "<leader>.";
      action = "<cmd>lua Snacks.scratch()<CR>";
      options.desc = "Scratch";
    }
    {
      mode = "n";
      key = "<leader>/";
      action = "<cmd>lua Snacks.picker.grep()<CR>";
      options.desc = "Grep";
    }
    {
      mode = "n";
      key = "<leader>:";
      action = "<cmd>lua Snacks.picker.command_history()<CR>";
      options.desc = "Command history";
    }
    {
      mode = "n";
      key = "<leader><space>";
      action = "<cmd>lua Snacks.picker.smart()<CR>";
      options.desc = "Smart picker";
    }

    {
      mode = "n";
      key = "<C-/>";
      action = "<cmd>lua Snacks.terminal()<CR>";
      options.desc = "Terminal";
    }
  ];
}
