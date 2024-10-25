{ pkgs, ... }:
{
  nixpkgs = {
    overlays = [
      (self: super: {
        dwl = super.dwl.overrideAttrs (oldattrs: {
          # src = super.fetchFromGitea {
          #   domain = "codeberg.org";
          #   owner = "dwl";
          #   repo = "dwl";
          #   rev = "002c7d2204"; 
          #   hash = "sha256-mgO+iTJmAM0N5Q+6fAfMAOU0O1T8xUWRdaIcbRX3Pa8=";
          # };
          conf = ./dwl/config.h;
        });
      })
    ];
  };
  environment.systemPackages = with pkgs; [
    # (dwl.override {
    #   src = fetchFromGitea {
    #     domain = "codeberg.org";
    #     owner = "dwl";
    #     repo = "dwl";
    #     rev = "002c7d2204"; 
    #     # aede3b294b
    #     hash = "sha256-8Zv8xgRxeF5yxkF1DLELCFLN7Vql3oq0T63G6tFy8kk=";
    #   };
    #   conf = ./dwl/config.h;
    # })

    dwl

    somebar
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
}
