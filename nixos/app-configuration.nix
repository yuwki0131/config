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
    # jetbrains.idea-community

    ## graphc tools
    inkscape
    gimp
    pinta
    feh
    capture
    gcolor3
    libheif
    ffmpeg
    kdePackages.gwenview
    kdePackages.ffmpegthumbs

    ## file tools
    meld
    kdePackages.dolphin

    ## reader
    foliate

    ## network tools
    speedtest-cli
    # fast-cli
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
    ripgrep

    ## monitoring
    htop
    powertop
    lm_sensors
    acpi
    gnome-system-monitor
    glances

    ## system info
    # neofetch
    lshw
    wlr-randr
    usbutils

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
    ## for trackpad
    libinput
    libinput-gestures

    ## for emacs
    cmigemo
    fd

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
    nodejs_22
    pnpm
    rustc
    cargo
    rustup
    asdf-vm
    go
    go-migrate
    python3
    openjdk
    gradle

    ## lsp
    yaml-language-server
    vscode-langservers-extracted
    marksman
    bash-language-server
    ruby-lsp
    basedpyright
    nixd

    ## db
    # dbeaver-bin
    # pgadmin4
    # mariadb
    # redis

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
    # virtualbox

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

    ## web game asset pipeline
    vips
    librsvg
    libpng
    libjpeg
    libwebp

    ## ai
    claude-code
    codex
    opencode
    github-copilot-cli

    #########################################
    ## Trial Apps
    #########################################

    ## file tools
    # syncthing # todo: try
    # nextcloud # todo: try
  ];
}
