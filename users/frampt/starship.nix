# A nice customizable prompt
{
  programs.starship = {
    enable = true;
    enableZshIntegration = true;
    settings = {
      add_newline = false;
      # Display the hostname always in bold green
      hostname = {
        ssh_only = false;
        format = "[$ssh_symbol$hostname]($style) ";
        style = "bold green";
      };
      character = {
        success_symbol = "[ \\$ ](bold green)";
        error_symbol = "[ \\$ ](bold red)";
      };

      # Display the username
      username = {
        show_always = true;
        format = "[$user]($style)@";
      };

      directory = {
        read_only = " ro";
        truncation_symbol = ".../";
      };
    };
  };
}
