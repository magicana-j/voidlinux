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

```
sudo xbps-install -Su
```

- dbus elogind polkit
- xorg mesa-dri
- NetworkManager network-manager-applet
- pulseaudio pavucontrol
- nano neovim htop fastfetch neofetch git

## Enable services

```
ln -sv /etc/sv/dbus /etc/service/
ln -sv /etc/sv/NetworkManager /etc/service/
```

## KDE Plasma desktop

- kde-plasma kde-baseapps spectacle

```
ln -sv /etc/sv/sddm /etc/service/
```

## Xfce4 desktop

- xfce4 xfce4-plugins thunar-archive-plugin gvfs lightdm lightdm-gtk-greeter

```
ln -sv /etc/sv/lightdm /etc/service/
sudo rm /var/service/sddm
```

## Japanese fonts and ime

- noto-fonts-cjk noto-fonts-ttf-extra noto-fonts-emoji
- fcitx5 fcitx5-configtool fcitx5-mozc
- fcitx5-gtk+2 fcitx5-gtk+3 fcitx5-qt5

## Apps

- firefox
- timeshift
- gparted dosfstools
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

