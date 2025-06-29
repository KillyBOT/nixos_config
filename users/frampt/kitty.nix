{
  programs.kitty = {
    enable = true;
    # enableBashIntegration = true;
    # enableFishIntegration = true;
    # enableZshIntegration = true;
    settings = {
      scrollback_lines = 16384;
      enable_audio_bell = false;
      update_check_interval = 0; # Telemetry is dumb
    };
  };
}
