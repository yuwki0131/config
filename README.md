# Desktop Environment Configuration

<img src="docs/imgs/screenshot.png" hspace="10">

## nix channel version

```
$ sudo nix-channel --list
nixos https://nixos.org/channels/nixos-24.05
```

## setup

### nixos configuration

#### link configuration

```
$ mkdir myconfig
$ cd myconfig
$ git clone git@github.com:yuwki0131/config.git
$ mv /etc/nixos/configuration.nix .
$ sudo ln -s ~/myconfig/config/nixos/configuration.nix /etc/nixos/configuration.nix
$ sudo ln -s ~/myconfig/config/nixos/app-configuration.nix /etc/nixos/app-configuration.nix
```

#### setup user configuration

```
$ touch /etc/nixos/user-configuration.nix
```

```
{ pkgs, ... }:

{
  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.<user-name> = {
    <details>
  };
}
```

#### setup environmental configuration

```
$ touch /etc/nixos/env-configuration.nix
```

```
{
  <details ....>
}
```

#### rebuild


```
$ sudo nixos-rebuild switch
```

### link app configurations

#### bash

```
$ ln -s ~/myconfig/config/bash/.bashrc ~/.bashrc
```

#### alacritty

```
$ ln -s ~/myconfig/config/alacritty ~/.config/alacritty
```

#### vim

```
$ ln -s ~/myconfig/config/.vimrc ~/.vimrc
```

#### hyprland

```
$ ln -s ~/myconfig/config/hypr ~/.config/hypr
```

#### eww

```
$ ln -s ~/myconfig/config/eww ~/.config/eww
```

### other settings

#### wallpaper
```
$ mkdir ~/myconfig/wallpapers
$ mv <wallpaper.jpg> ~/myconfig/wallpapers
```

## Tips

### Dropbox

use maestral
