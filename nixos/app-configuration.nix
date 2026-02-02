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
    # todo fixo
    tor-browser

    ## terminals
    kitty
    alacritty
    # konsole

    ## text editors
    vscode
    vim
    emacs
    jetbrains.idea-community

    ## graphc tools
    inkscape
    gimp
    pinta
    feh
    capture
    gcolor3
    libheif
    ffmpeg

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
    iw

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
    sttr

    ## monitoring
    htop
    powertop
    lm_sensors
    acpi
    gnome-system-monitor
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
    alsa-utils
    pulseaudioFull

    ## bluetooth
    blueman

    ## keylogger
    logkeys

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
    rustup
    asdf-vm
    nodejs_20
    go
    go-migrate
    python3
    python311Packages.pip
    openjdk
    gradle
    elmPackages.elm

    ## db
    dbeaver-bin
    pgadmin4
    mariadb
    redis

    ## docker
    docker
    docker-compose
    lazydocker
    minikube
    k3s
    k9s
    kubectl
    kubernetes

    ## vm
    virtualbox

    ## git
    git
    gitFull
    gitkraken
    github-desktop
    git-cola
    tig
    gh

    ## dev tools
    jq
    jo
    gron
    wget
    air # for golang
    cloc
    awscli2

    ## build tools
    cmake
    gnumake
    gcc
    llvm
    libtool
    autoconf
    automake
    ncurses
    pkg-config

    ## ai
    claude-code
    codex
    opencode

    #########################################
    ## Trial Apps
    #########################################

    ## file tools
    # syncthing # todo: try
    # nextcloud # todo: try
  ];
}
