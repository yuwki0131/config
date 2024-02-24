# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, ... }:
{
  imports =
    [ # Include the results of the hardware scan.
      /etc/nixos/hardware-configuration.nix
    ];

  # Bootloader.
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  networking.hostName = "nixos"; # Define your hostname.
  # networking.wireless.enable = true;  # Enables wireless support via wpa_supplicant.

  # Configure network proxy if necessary
  # networking.proxy.default = "http://user:password@proxy:port/";
  # networking.proxy.noProxy = "127.0.0.1,localhost,internal.domain";

  # Enable networking
  networking.networkmanager.enable = true;

  # Set your time zone.
  time.timeZone = "Asia/Tokyo";

  # Select internationalisation properties.
  i18n.defaultLocale = "ja_JP.UTF-8";

  i18n.extraLocaleSettings = {
    LC_ADDRESS = "ja_JP.UTF-8";
    LC_IDENTIFICATION = "ja_JP.UTF-8";
    LC_MEASUREMENT = "ja_JP.UTF-8";
    LC_MONETARY = "ja_JP.UTF-8";
    LC_NAME = "ja_JP.UTF-8";
    LC_NUMERIC = "ja_JP.UTF-8";
    LC_PAPER = "ja_JP.UTF-8";
    LC_TELEPHONE = "ja_JP.UTF-8";
    LC_TIME = "ja_JP.UTF-8";
  };

  i18n.inputMethod = {
    enabled = "fcitx5";
    fcitx5.addons = [pkgs.fcitx5-mozc];
  };

  # Enable the X11 windowing system.
  services.xserver.enable = true;

  # hyprland
  programs.hyprland.enable=true;

  # Enable the KDE Plasma Desktop Environment.
  services.xserver.displayManager.sddm.enable = true;
  ## use default plasma
  # services.xserver.desktopManager.plasma5.enable = true;
  # use default Hyprland
  # services.xserver.displayManager.defaultSession = "hyprland";


  # Configure keymap in X11
  services.xserver = {
    layout = "jp";
    xkbVariant = "";
    xkbOptions = "ctrl:swapcaps"; 
  };

  # Configure console keymap
  console.keyMap = "jp106";

  fonts = {
    fonts = with pkgs; [
      noto-fonts-cjk-serif
      noto-fonts-cjk-sans
      noto-fonts-emoji
      nerdfonts
    ];
    fontDir.enable = true;
    fontconfig = {
      defaultFonts = {
        serif = ["Noto Serif CJK JP" "Noto Color Emoji"];
        sansSerif = ["Noto Sans CJK JP" "Noto Color Emoji"];
        monospace = ["JetBrainsMono Nerd Font" "Noto Color Emoji"];
        emoji = ["Noto Color Emoji"];
      };
    };
  };

  # bluetooth
  hardware.bluetooth.enable = true;
  hardware.pulseaudio.enable = true;
  hardware.pulseaudio.systemWide = true;

  # services.blueman.enable = true;

  # Enable CUPS to print documents.
  services.printing.enable = true;

  # Enable sound with pipewire.
  sound.enable = true;
  # hardware.pulseaudio.enable = true;
  security.rtkit.enable = true;
  services.pipewire = {
    enable = false;
    alsa.enable = false;
    alsa.support32Bit = false;
    pulse.enable = true;
    # If you want to use JACK applications, uncomment this
    #jack.enable = true;

    # use the example session manager (no others are packaged yet so this is enabled by default,
    # no need to redefine it in your config for now)
    #media-session.enable = true;
  };

  # Enable touchpad support (enabled default in most desktopManager).
  # services.xserver.libinput.enable = true;

  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.yuwki0131 = {
    isNormalUser = true;
    description = "yuwki0131";
    extraGroups = [ "networkmanager" "wheel" ];
    packages = with pkgs; [
      # browser
      firefox
      google-chrome
      nyxt

      # tools
      fast-cli
      # googler
      slack
      wireshark
      wine
      joplin
      zathura
      fuzzel
      lm_sensors
      libwebp
      gcolor3
      alsaUtils

      ## file tools
      # meld # diff
      # syncthing # todo: try
      # nextcloud # todo: try

      # terminal tools
      neofetch # system info
      # tldr # too long
      bat
      autojump
      fzf
      peco
      ast-grep
      tree
      ranger
      sl
      silver-searcher

      # system tools
      lshw

      # graphc tools
      inkscape
      gimp
      pinta
      tilix
      feh
      capture

      # dev tools
      git
      gitkraken
      jq
      wget
      # go-swag
      # go-swagger
      air
      cloc

      # terminal tools
      xclip

      # db
      dbeaver
      mysql

      # langs
      rustc
      cargo
      nodejs
      go
      go-migrate
      asdf
      python3
      openjdk
      gradle

      # terminals
      terminator
      guake
      hyper
      st

      # editor
      vscode
      vim
      emacs

      # utils
      htop
      docker
      docker-compose

      # keyring
      gnome.gnome-keyring

      # hypr
      hyprpaper
      eww-wayland

      # node
      nodePackages.node2nix
      openapi-generator-cli

      ## trials ..................

    ];
  };

  services.gnome.gnome-keyring.enable = true;


  # docker
  virtualisation = {
    docker.enable = true;
  };

  # Enable automatic login for the user.
  services.xserver.displayManager.autoLogin.enable = false;
  # services.xserver.displayManager.autoLogin.user = "yuwki0131";

  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

  nixpkgs.overlays = [ 
    (import /home/yuwki0131/myconfig/config/nixos/overlays/fix-st.nix)
  ];

  # List packages installed in system profile. To search, run:
  # $ nix search wget
  environment.systemPackages = with pkgs; [
  #  vim # Do not forget to add an editor to edit configuration.nix! The Nano editor is also installed by default.
  #  wget
  ];
  
  # Some programs need SUID wrappers, can be configured further or are
  # started in user sessions.
  # programs.mtr.enable = true;
  # programs.gnupg.agent = {
  #   enable = true;
  #   enableSSHSupport = true;
  # };

  # List services that you want to enable:

  # Enable the OpenSSH daemon.
  # services.openssh.enable = true;

  # Open ports in the firewall.
  # networking.firewall.allowedTCPPorts = [ ... ];
  # networking.firewall.allowedUDPPorts = [ ... ];
  # Or disable the firewall altogether.
  # networking.firewall.enable = false;

  # This value determines the NixOS release from which the default
  # settings for stateful data, like file locations and database versions
  # on your system were taken. It‘s perfectly fine and recommended to leave
  # this value at the release version of the first install of this system.
  # Before changing this value read the documentation for this option
  # (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
  system.stateVersion = "23.05"; # Did you read the comment?

}
