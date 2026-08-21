# Desktop Environment Configuration

<img src="docs/imgs/screenshot.png" hspace="10">

## setup

### nixos configuration

#### clone repository

```
mkdir ~/myconfig
cd ~/myconfig
git clone git@github.com:yuwki0131/config.git
```

#### setup machine-local configuration

マシン固有の設定はリポジトリには含めず、`/etc/nixos/` に直接置きます
(`hardware-configuration.nix` は NixOS インストール時に生成済みのものをそのまま使います)。

exampleファイルをコピーして、自分の情報に書き換えます：

```bash
sudo cp ~/myconfig/config/nixos/user-configuration.nix.example /etc/nixos/user-configuration.nix
sudo vim /etc/nixos/user-configuration.nix
```

編集する項目：
- `<your-username>` → 自分のユーザー名
- `<Your Full Name>` → フルネーム
- `<your-hostname>` → マシンのホスト名
- SSH公開鍵（必要な場合）

環境設定（ファイアウォール等）も同様にコピーして編集します（任意）：

```bash
sudo cp ~/myconfig/config/nixos/env-configuration.nix.example /etc/nixos/env-configuration.nix
sudo vim /etc/nixos/env-configuration.nix
```

#### rebuild

`/etc/nixos/` 配下（flake 外）を読むため `--impure` が必要です。

```
$ sudo nixos-rebuild switch --flake ~/myconfig/config#nixos --impure
```

### link app configurations

#### bash

```
ln -s ~/myconfig/config/bash/.bashrc ~/.bashrc
```

#### alacritty

```
ln -s ~/myconfig/config/alacritty ~/.config/alacritty
```

#### vim

```
ln -s ~/myconfig/config/.vimrc ~/.vimrc
```

#### hyprland

```
ln -s ~/myconfig/config/hypr ~/.config/hypr
```

#### eww

```
ln -s ~/myconfig/config/eww ~/.config/eww
```

### other settings

#### wallpaper
```
mkdir ~/myconfig/wallpapers
mv <wallpaper.jpg> ~/myconfig/wallpapers/wallpaper.jpg
```

## Tips
