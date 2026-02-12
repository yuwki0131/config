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
mkdir myconfig
cd myconfig
git clone git@github.com:yuwki0131/config.git
mv /etc/nixos/configuration.nix .
sudo ln -s ~/myconfig/config/nixos/configuration.nix /etc/nixos/configuration.nix
sudo ln -s ~/myconfig/config/nixos/app-configuration.nix /etc/nixos/app-configuration.nix
```

#### setup user configuration

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

#### setup environmental configuration

exampleファイルをコピーして、環境に合わせて設定します：

```bash
sudo cp ~/myconfig/config/nixos/env-configuration.nix.example /etc/nixos/env-configuration.nix
sudo vim /etc/nixos/env-configuration.nix
```

編集する項目：
- ファイアウォールのポート設定
- Dropboxの有効化（必要な場合）
- sudoパスワード設定（セキュリティ要件に応じて）

#### rebuild


```
$ sudo nixos-rebuild switch
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

### Dropbox

use maestral
