# 8777-i3-config

My i3 window manager configuration, migrated from Sway.

从 Sway 迁移到 i3 的个人配置仓库。

---

## Components / 组件

| Component | Tool | Note |
|-----------|------|------|
| **WM** | i3-gaps (≥4.22) | |
| **Bar** | i3status | lightweight built-in |
| **Terminal** | WezTerm | Kitty image protocol supported |
| **Launcher** | Rofi | replaces fuzzel from Sway era |
| **Notifications** | Dunst | replaces mako |
| **Wallpaper** | Nitrogen | GUI manager |
| **Compositor** | Picom | transparency, no tearing |
| **Shell** | Fish | |
| **Prompt** | Starship | |
| **System Info** | Fastfetch | |
| **Screenshot** | Flameshot | `Print` key |
| **Clipboard** | X11 native | select = copy, middle-click = paste |
| **Color Gen** | Matugen | wallpaper → theme colors |
| **File Manager** | Thunar | |

---

## Directory Layout / 目录结构

```
8777-i3-config/
├── i3/config                 # i3 window manager config
├── i3status/config           # status bar config
├── wezterm/                  # terminal emulator
├── fish/                     # shell config
├── starship.toml             # prompt theme
├── fastfetch/                # system info display
├── rofi/                     # app launcher
├── Thunar/                   # file manager
├── nitrogen/                 # wallpaper settings
├── bin/                      # helper scripts
├── config-i3.toml            # matugen color generation config
└── templates/                # matugen color templates
```

---

## Fedora Setup / Fedora 安装步骤

```bash
# 1. Enable RPM Fusion (for packages like picom, wezterm)
sudo dnf install https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm
sudo dnf install https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

# 2. Install packages
sudo dnf install i3 i3status i3lock feh nitrogen dunst maim xclip \
    xautolock picom rofi pavucontrol flameshot brightnessctl \
    wezterm fish starship fastfetch Thunar \
    fcitx5 fcitx5-pinyin fcitx5-configtool \
    matugen chafa

# 3. Copy configs
cp -r i3 ~/.config/
cp -r i3status ~/.config/
cp -r wezterm ~/.config/
cp -r fish ~/.config/
cp starship.toml ~/.config/
cp -r fastfetch ~/.config/
cp -r rofi ~/.config/
cp -r Thunar ~/.config/
cp -r nitrogen ~/.config/

# 4. Matugen templates (for wallpaper color generation)
cp -r templates ~/.config/matugen/
cp config-i3.toml ~/.config/matugen/

# 5. Enable PipeWire (Fedora manages it via systemd --user)
systemctl --user enable --now pipewire pipewire-pulse wireplumber

# 6. Reboot & select i3 in SDDM/GDM
```

---

## Keybindings / 快捷键

| Key | Action |
|-----|--------|
| `$mod+Return` | Open terminal (WezTerm) |
| `$mod+q` | Close window |
| `$mod+Space` | App launcher (Rofi) |
| `$mod+Tab` | Window switcher (Rofi) |
| `$mod+Shift+c` | Reload i3 config |
| `$mod+Shift+e` | Exit i3 |
| `$mod+Shift+r` | Reload i3 config (alt) |
| `$mod+r` | Resize mode |
| `$mod+Shift+Space` | Toggle floating |
| `$mod+Shift+w` | Wallpaper picker (Nitrogen) |
| `$mod+1-0` | Switch workspace |
| `$mod+Shift+1-0` | Move window to workspace |
| `Print` | Screenshot (Flameshot GUI) |
| `XF86AudioRaise/Lower/Mute` | Volume control |
| `XF86MonBrightnessUp/Down` | Brightness control |

`$mod` = Windows/Super key.

---

## Matugen Color Generation / 取色

After changing wallpaper, run:
```bash
matugen image ~/Pictures/your-wallpaper.jpg --config ~/.config/matugen/config-i3.toml
```

This generates colors for: WezTerm, GTK3/4, Fcitx5, Starship, Yazi, Neovim, Btop.
