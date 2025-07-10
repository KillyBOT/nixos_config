{pkgs, ...}: {
  # I don't use pulseaudio
  services.pulseaudio.enable = false;
  # I use pipewire
  services.pipewire = {
    enable = true;
    # Along with ALSA support
    alsa = {
      enable = true;
      support32Bit = true;
    };

    # Pulseaudio support
    pulse.enable = true;
    # JACK support
    jack.enable = true;
  };

  # Look this up later lol
  security.rtkit.enable = true;
}
