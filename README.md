# Desktop Environment Configuration

## nix channel version

```
$ sudo nix-channel --list
nixos https://nixos.org/channels/nixos-24.05
```

## setup

### nixos configuration

```
$ mkdir myconfig
$ cd myconfig
$ git clone git@github.com:yuwki0131/config.git
$ mv /etc/nixos/configuration.nix .
$ sudo ln -s ~/myconfig/config/nixos/configuration.nix /etc/nixos/configuration.nix
$ sudo ln -s ~/myconfig/config/nixos/app-configuration.nix /etc/nixos/app-configuration.nix
$ sudo nixos-rebuild switch
```

### bash

```
$ ln -s ~/myconfig/config/bash/.bashrc ~/.bashrc
```

### vim

```
$ ln -s ~/myconfig/config/.vimrc ~/.vimrc
```

### hyprland

```
$ ln -s ~/myconfig/config/hypr ~/.config/hypr
```

### eww

```
$ ln -s ~/myconfig/config/eww ~/.config/eww
```

#### wallpaper
```
$ mkdir ~/myconfig/wallpapers
$ mv <wallpaper.jpg> ~/myconfig/wallpapers
```

