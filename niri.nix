{ pkgs, ... }:

{
  programs.niri.enable = true;
  environment.variables.NIXOS_OZONE_WL = "1";

  environment.systemPackages = with pkgs; [
    mako
    swaylock
    swayosd
    swayidle
    swaybg
    wl-clipboard
    bemenu
    gammastep
    darkman
  ];
  hardware.graphics = {
    enable = true;
    extraPackages = with pkgs; [
      # ... # your Open GL, Vulkan and VAAPI drivers
      vpl-gpu-rt          # for newer GPUs on NixOS >24.05 or unstable
      # onevpl-intel-gpu  # for newer GPUs on NixOS <= 24.05
      # intel-media-sdk   # for older GPUs
    ];
  };

}

