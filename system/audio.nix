{pkgs, ...}: {
  # I don't use pulseaudio
  services.pulseaudio.enable = false;
  # I use pipewire
  services.pipewire = {
    enable = true;
    # Along with ALSA support
    alsa = {
      enable = true;
      # Not sure exactly what this does
      support32Bit = true;
    };

    # Pulseaudio support
    pulse.enable = true;
    # JACK support
    jack.enable = true;
  };

  # Look this up later lol
  security.rtkit.enable = true;

  # hardware = {
  #   # Bluetooth support
  #   bluetooth = {
  #     enable = true;
  #     # Don't power on by default
  #     powerOnBoot = false;
  #   };
  # };
}
