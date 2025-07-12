{...}: {
  programs.nixvim.keymaps = [
    {
      mode = "n";
      key = "<leader>ld";
      action = "<cmd>lua Snacks.picker.lsp_definitions()<CR>";
      options.desc = "[d]efinition";
    }
    {
      mode = "n";
      key = "<leader>lD";
      action = "<cmd>lua Snacks.picker.lsp_declarations()<CR>";
      options.desc = "[d]eclaration";
    }
    {
      mode = ["n" "v"];
      key = "<leader>lf";
      action = "<cmd>lua require(\"conform\").format({async = true, lsp_format = \"fallback\"})<CR>";
      options.desc = "[f]ormat";
    }
  ];
}
