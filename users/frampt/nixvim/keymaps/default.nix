{...}: {
  imports = [
    ./snacks
    ./which-key.nix
  ];
  programs.nixvim = {
    keymaps = [
      # ESC turns off highlights
      {
        mode = "n";
        key = "<Esc>";
        action = "<cmd>nohlsearch<CR>";
      }

      # [[ Buffers/Windows ]]

      # <C-hjkl> for navigating windows
      {
        mode = "n";
        key = "<C-h>";
        action = "<C-w><C-h>";
        options.desc = "Move focus left";
      }
      {
        mode = "n";
        key = "<C-j>";
        action = "<C-w><C-j>";
        options.desc = "Move focus below";
      }
      {
        mode = "n";
        key = "<C-k>";
        action = "<C-w><C-k>";
        options.desc = "Move focus above";
      }
      {
        mode = "n";
        key = "<C-l>";
        action = "<C-w><C-l>";
        options.desc = "Move focus right";
      }

      # <S-hl> for navigating buffers ([b and ]b as well)
      {
        mode = "n";
        key = "<S-h>";
        action = "<cmd>bprev<CR>";
        options.desc = "buffer";
      }
      {
        mode = "n";
        key = "<S-l>";
        action = "<cmd>bnext<CR>";
        options.desc = "buffer";
      }
      {
        mode = "n";
        key = "[b";
        action = "<cmd>bprev<CR>";
        options.desc = "buffer";
      }
      {
        mode = "n";
        key = "]b";
        action = "<cmd>bnext<CR>";
        options.desc = "buffer";
      }
    ];
  };
}
