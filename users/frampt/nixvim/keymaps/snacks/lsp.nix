{...}: {
  programs.nixvim.keymaps = [
    {
      mode = "n";
      key = "<leader>ld";
      action = "<cmd> lua Snacks.picker.lsp_definitions()<CR>";
      options.desc = "[d]efinitions";
    }
    {
      mode = "n";
      key = "<leader>lD";
      action = "<cmd> lua Snacks.picker.lsp_declarations()<CR>";
      options.desc = "[D]eclarations";
    }
    {
      mode = "n";
      key = "<leader>ll";
      action = "<cmd> lua Snacks.picker.lsp_references()<CR>";
      options.desc = "References";
    }
    {
      mode = "n";
      key = "<leader>li";
      action = "<cmd> lua Snacks.picker.lsp_implementations()<CR>";
      options.desc = "[i]mplementations";
    }
    {
      mode = "n";
      key = "<leader>ls";
      action = "<cmd> lua Snacks.picker.lsp_symbols()<CR>";
      options.desc = "[s]ymbols";
    }
    {
      mode = "n";
      key = "<leader>lS";
      action = "<cmd> lua Snacks.picker.lsp_workspace_symbols()<CR>";
      options.desc = "Workspace [S]ymbols";
    }
    {
      mode = "n";
      key = "<leader>lt";
      action = "<cmd> lua Snacks.picker.lsp_type_definitions()<CR>";
      options.desc = "[t]ype definitions";
    }

    {
      mode = ["n" "t"];
      key = "]r";
      action = "<cmd> lua Snacks.words.jump(vim.v.count1)<CR>";
      options.desc = "Reference";
    }
    {
      mode = ["n" "t"];
      key = "[r";
      action = "<cmd> lua Snacks.words.jump(-vim.v.count1)<CR>";
      options.desc = "Reference";
    }
  ];
}
