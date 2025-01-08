# voidlinux

- 1GiB  /boot/efi  vfat
- 8GiB  swap
- rest  /  ext4

```
root
voidlinux
```

```
setfont -d
```

```
void-installer
```


## Base

- dbus elogind polkit
- xorg mesa-dri
- NetworkManager network-manager-applet
- pulseaudio pavucontrol
- nano neovim htop fastfetch neofetch git

## KDE Plasma desktop

- kde-plasma kde-baseapps spectacle

## Enable services

```
ln -sv /etc/sv/dbus /etc/service/
ln -sv /etc/sv/NetworkManager /etc/service/
ln -sv /etc/sv/sddm /etc/service/
```

## Japanese fonts and ime

- noto-cjk-jp noto-fonts-ttf-extra noto-fonts-emoji
- fcitx5 fcitx5-configtool fcitx5-mozc
- fcitx5-gtk+2 fcitx5-gtk+3 fcitx5-qt5

## Apps

- firefox
- timeshift
- zip unzp p7zip xarchiver
- shotwell
- vlc

- flatpak
- podman podman-compose

```
$ flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
```

/etc/containers/registries.conf
```
[registries.search]
registries = ["docker.io"]
```


## Development

- go rust

