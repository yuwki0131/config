# Desktop Environment Configuration

<img src="docs/imgs/screenshot.png" hspace="10">

## nix channel version

```
$ sudo nix-channel --list
nixos https://nixos.org/channels/nixos-26.05
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
cp ~/myconfig/config/nixos/user-configuration.nix.example ~/myconfig/config/nixos/user-configuration.nix
vim ~/myconfig/config/nixos/user-configuration.nix
```

flake では untracked な repo 内ファイルが評価対象から外れるため、`nixos/user-configuration.nix` を作ったら `git add nixos/user-configuration.nix` しておく必要があります。

編集する項目：
- `<your-username>` → 自分のユーザー名
- `<Your Full Name>` → フルネーム
- `<your-hostname>` → マシンのホスト名
- SSH公開鍵（必要な場合）

`services.displayManager.autoLogin.user` は、通常ユーザーが 1 人だけ定義されている場合は自動でそのユーザー名が使われます。

#### setup environmental configuration

exampleファイルをコピーして、環境に合わせて設定します：

```bash
cp ~/myconfig/config/nixos/env-configuration.nix.example ~/myconfig/config/nixos/env-configuration.nix
vim ~/myconfig/config/nixos/env-configuration.nix
```

編集する項目：
- ファイアウォールのポート設定
- sudoパスワード設定（セキュリティ要件に応じて）

#### rebuild


```
$ sudo nixos-rebuild switch --flake ~/myconfig/config#nixos
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
