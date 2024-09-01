# App installations

{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [

    #########################################
    ## GUI Tools
    #########################################

    ## browsers
    google-chrome
    chromium
    firefox
    nyxt
    luakit
    tor-browser-bundle-bin

    ## terminals
    kitty
    alacritty
    konsole

    ## text editors
    vscode
    vim
    emacs

    ## graphc tools
    inkscape
    gimp
    pinta
    feh
    capture
    gcolor3

    ## file tools
    meld

    ## reader
    foliate

    ## network tools
    speedtest-cli
    fast-cli
    wireshark
    nmap
    nload

    ## sns
    slack

    ## Windows emulator
    wine

    ## document viewer
    zathura

    ## invoke apps
    fuzzel

    #########################################
    ## Terminal Utilities
    #########################################

    ## terminal tools
    tldr
    bat
    autojump
    fzf
    peco
    ast-grep
    tree
    ranger
    sl
    silver-searcher
    xclip
    eza # as exa "exa has been removed"
    httpie

    ## monitoring
    htop
    powertop
    lm_sensors
    acpi
    gnome.gnome-system-monitor
    glances

    ## system info
    neofetch
    lshw
    wlr-randr

    #########################################
    ## System & System Utilities
    #########################################

    ## hyprland
    hyprpaper
    eww
    hyprcursor
    kdePackages.breeze
    bibata-cursors

    ## app platform
    flatpak

    ## for screen capture
    slurp
    grim
    wl-clipboard

    ## file
    unzip
    imagemagick
    libwebp
    maestral

    ## for trackpad
    libinput
    libinput-gestures

    ## audio
    alsaUtils

    ## bluetooth
    blueman

    ## npu
    openvino

    ## for nix
    nixpkgs-fmt
    deadnix

    #########################################
    ## For Dev
    #########################################

    ## langs
    rustc
    cargo
    asdf
    nodejs
    go
    go-migrate
    python3
    python311Packages.pip
    openjdk
    gradle
    elmPackages.elm

    ## db
    dbeaver-bin
    mysql
    redis

    ## docker
    docker
    docker-compose

    ## git
    git
    gitkraken
    github-desktop
    git-cola
    gh

    ## dev tools
    jq
    jo
    gron
    wget
    air # for golang
    cloc

    #########################################
    ## Trial Apps
    #########################################

    ## file tools
    # syncthing # todo: try
    # nextcloud # todo: try
  ];
}
