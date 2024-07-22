# App installations

{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [    
    # browser
    firefox
    google-chrome
    nyxt

    # add currently
    unzip
    imagemagick

    # tools
    fast-cli
    slack
    wine
    # joplin (purged 2024/07/10)
    zathura
    fuzzel
    lm_sensors
    libwebp
    gcolor3
    alsaUtils
    speedtest-cli
    nload

    # network tools
    wireshark
    nmap

    ## file tools
    meld
    # syncthing # todo: try
    # nextcloud # todo: try

    # terminal tools
    neofetch # system info (purged 2024/07/10)
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

    # system tools
    lshw
    wlr-randr
    libinput
    libinput-gestures
    ydotool
    powertop

    # graphc tools
    inkscape
    gimp
    pinta
    tilix
    feh
    capture

    # capture
    slurp
    grim
    wl-clipboard

    # dev tools
    git
    gitkraken
    jq
    wget
    air
    cloc

    # terminal tools
    xclip

    # db
    dbeaver-bin
    mysql
    redis

    # langs
    rustc
    cargo
    nodejs
    go
    go-migrate
    asdf
    python3
    python311Packages.pip
    openjdk
    gradle

    # terminals
    terminator
    st
    kitty
    alacritty

    # text editor
    vscode
    vim
    emacs

    # utils
    htop
    docker
    docker-compose

    # hypr
    hyprpaper
    eww
  ];
}
