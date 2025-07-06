{...}: {
  imports = [
    ./snacks
    ./buffer.nix
    ./file.nix
    ./which-key.nix
  ];
  programs.nixvim = {
    keymaps = [
      # [[ General ]]
      {
        mode = "n";
        key = "<Esc>";
        action = "<cmd>nohlsearch<CR>";
      }
      {
        mode = ["n" "v"];
        key = "<S-u>";
        action = "<C-r>";
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

      # [[ Editing ]]

      # Keep selection during visual indentation
      {
        mode = "v";
        key = "<";
        action = "<gv";
      }
      {
        mode = "v";
        key = ">";
        action = ">gv";
      }
    ];
  };
}
