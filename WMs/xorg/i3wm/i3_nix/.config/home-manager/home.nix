{ config, pkgs, ... }:

{
  home.username = "owl";
  home.homeDirectory = "/home/owl";
  home.stateVersion = "24.05";

  nixpkgs.config = {
    allowBroken = true;
    allowUnfree = true;
  };


  home.packages = [
	pkgs.telegram-desktop
	pkgs.firefox

	pkgs.ghostscript
	pkgs.blender
	pkgs.inkscape
	pkgs.gimp-with-plugins

	pkgs.alacritty
	pkgs.fish
	pkgs.ranger
	pkgs.scrot
	pkgs.neofetch
	pkgs.cmus
	pkgs.cava
	pkgs.links2
	pkgs.fish
	pkgs.htop
	pkgs.i3altlayout
	pkgs.git
	pkgs.fastfetch

	pkgs.cinnamon.nemo
	pkgs.gnome.file-roller
	pkgs.mpv
	pkgs.viewnior
	pkgs.obs-studio
	pkgs.reaper
	pkgs.kdePackages.kdenlive
	pkgs.ventoy-full
	pkgs.ventoy

	pkgs.lutris
	pkgs.wine

	pkgs.polybar
	pkgs.jq
	pkgs.rofi
	pkgs.nitrogen
	pkgs.lxappearance
	pkgs.conky
	pkgs.picom
  ];

  # Home Manager is pretty good at managing dotfiles. The primary way to manage
  # plain files is through 'home.file'.
  home.file = {
    # # Building this configuration will create a copy of 'dotfiles/screenrc' in
    # # the Nix store. Activating the configuration will then make '~/.screenrc' a
    # # symlink to the Nix store copy.
    # ".screenrc".source = dotfiles/screenrc;

    # # You can also set the file content immediately.
    # ".gradle/gradle.properties".text = ''
    #   org.gradle.console=verbose
    #   org.gradle.daemon.idletimeout=3600000
    # '';
  };

  # Home Manager can also manage your environment variables through
  # 'home.sessionVariables'. These will be explicitly sourced when using a
  # shell provided by Home Manager. If you don't want to manage your shell
  # through Home Manager then you have to manually source 'hm-session-vars.sh'
  # located at either
  #
  #  ~/.nix-profile/etc/profile.d/hm-session-vars.sh
  #
  # or
  #
  #  ~/.local/state/nix/profiles/profile/etc/profile.d/hm-session-vars.sh
  #
  # or
  #
  #  /etc/profiles/per-user/owl/etc/profile.d/hm-session-vars.sh
  #
  home.sessionVariables = {
    # EDITOR = "emacs";
  };

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
