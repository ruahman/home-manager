{ config, pkgs, ... }:

{
  # Home Manager needs a bit of information about you and the paths it should
  # manage.
  home.username = "ruahman";
  home.homeDirectory = "/home/ruahman";

  home.stateVersion = "24.05"; # Please read the comment before changing.

  home.packages = [
    pkgs.htop
    pkgs.neofetch
    pkgs.xclip
    pkgs.unzip
    pkgs.ripgrep
    pkgs.fzf
    pkgs.ispell
    pkgs.lua
    pkgs.luarocks 
    pkgs.nodejs_22
    pkgs.zsh

    pkgs.nerd-fonts.fira-code
    pkgs.nerd-fonts.caskaydia-cove
    pkgs.nerd-fonts.jetbrains-mono
  ];

  home.file = {
    # file needs to be added to git before you can refrence it.
    ".config/starship.toml".source = ./starship.toml;

    # # You can also set the file content immediately.
    # ".gradle/gradle.properties".text = ''
    #   org.gradle.console=verbose
    #   org.gradle.daemon.idletimeout=3600000
    # '';
  };

  home.sessionVariables = {
    # EDITOR = "emacs";
  };

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;

  programs.emacs.enable = true;
  programs.neovim.enable = true;
  programs.lazygit.enable = true;
  programs.tmux.enable = true;
  programs.bash.enable = true;
  programs.starship.enable = true;
}
