{ pkgs, ... }:

{
  # Install firefox.
  programs.firefox.enable = true;

  # Install waybar
  programs.waybar.enable = true;

  # Install fish shell
  programs.fish.enable = true;

  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.yhr = {
    isNormalUser = true;
    description = "Yehor";
    extraGroups = [ "networkmanager" "wheel" ];
    packages = with pkgs; [
      cmatrix
      cbonsai
      asciiquarium
      cava
      alacritty

      # Libreoffice
      libreoffice-qt
      hunspell
      hunspellDicts.ru_RU
      hunspellDicts.en_US
    
      imv
      mpv
      zathura
      ranger

      openttd
      gzdoom
      ioquake3
      vkquake

      krita
      # gimp
      # godot_4
      # blender
    ];
  };

  fonts.packages = with pkgs; [
    noto-fonts
    noto-fonts-cjk
    noto-fonts-emoji
    roboto-mono
    jetbrains-mono
    commit-mono
    cascadia-code
    iosevka
    martian-mono
  ];
}
