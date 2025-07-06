{...}: {
  programs.nixvim.keymaps = [
    {
      mode = "n";
      key = "<leader>sa";
      action = "<cmd>lua Snacks.picker.autocmds()<CR>";
      options.desc = "[a]utocmds";
    }
    {
      mode = "n";
      key = "<leader>sb";
      action = "<cmd>lua Snacks.picker.grep_buffers()<CR>";
      options.desc = "[b]uffers";
    }
    {
      mode = "n";
      key = "<leader>sc";
      action = "<cmd>lua Snacks.picker.commands()<CR>";
      options.desc = "[c]ommand history";
    }
    {
      mode = "n";
      key = "<leader>sd";
      action = "<cmd>lua Snacks.picker.diagnostics()<CR>";
      options.desc = "[d]iagnostics";
    }
    {
      mode = "n";
      key = "<leader>sD";
      action = "<cmd>lua Snacks.picker.diagnostics_buffer()<CR>";
      options.desc = "Buffer [D]iagnostics";
    }
    {
      mode = "n";
      key = "<leader>sh";
      action = "<cmd>lua Snacks.picker.help()<CR>";
      options.desc = "[h]elp pages";
    }
    {
      mode = "n";
      key = "<leader>sH";
      action = "<cmd>lua Snacks.picker.highlights()<CR>";
      options.desc = "[H]ighlights";
    }
    {
      mode = "n";
      key = "<leader>si";
      action = "<cmd>lua Snacks.picker.icons()<CR>";
      options.desc = "[i]cons";
    }
    {
      mode = "n";
      key = "<leader>sj";
      action = "<cmd>lua Snacks.picker.jumps()<CR>";
      options.desc = "[j]umps";
    }
    {
      mode = "n";
      key = "<leader>sk";
      action = "<cmd>lua Snacks.picker.keymaps()<CR>";
      options.desc = "[k]eymaps";
    }
    {
      mode = "n";
      key = "<leader>sl";
      action = "<cmd>lua Snacks.picker.lines()<CR>";
      options.desc = "[l]ines";
    }
    {
      mode = "n";
      key = "<leader>sL";
      action = "<cmd>lua Snacks.picker.loclist()<CR>";
      options.desc = "[L]ocation list";
    }
    {
      mode = "n";
      key = "<leader>sm";
      action = "<cmd>lua Snacks.picker.marks()<CR>";
      options.desc = "[m]arks";
    }
    {
      mode = "n";
      key = "<leader>sM";
      action = "<cmd>lua Snacks.picker.man()<CR>";
      options.desc = "[M]anpages";
    }
    {
      mode = "n";
      key = "<leader>sn";
      action = "<cmd>lua Snacks.picker.notifications()<CR>";
      options.desc = "[n]otifications";
    }
    {
      mode = "n";
      key = "<leader>sp";
      action = "<cmd>lua Snacks.picker.projects()<CR>";
      options.desc = "[p]rojects";
    }
    {
      mode = "n";
      key = "<leader>sq";
      action = "<cmd>lua Snacks.picker.qflist()<CR>";
      options.desc = "[q]uickfixes";
    }
    {
      mode = "n";
      key = "<leader>sr";
      action = "<cmd>lua Snacks.picker.resume()<CR>";
      options.desc = "[r]esume";
    }
    {
      mode = ["n" "x"];
      key = "<leader>sw";
      action = "<cmd>lua Snacks.picker.grep_word()<CR>";
      options.desc = "[w]ord";
    }
    {
      mode = "n";
      key = "<leader>s\"";
      action = "<cmd>lua Snacks.picker.registers()<CR>";
      options.desc = "Registers";
    }
    {
      mode = "n";
      key = "<leader>s/";
      action = "<cmd>lua Snacks.picker.search_history()<CR>";
      options.desc = "Search history";
    }
  ];
}
