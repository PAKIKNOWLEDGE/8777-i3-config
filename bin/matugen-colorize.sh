#!/bin/sh
# 从 nitrogen 获取当前壁纸，跑 matugen 刷新配色
WALLPAPER=$(sed -n 's/^file=//p' ~/.config/nitrogen/bg-saved.cfg | head -1)
if [ -n "$WALLPAPER" ] && [ -f "$WALLPAPER" ]; then
    matugen image "$WALLPAPER" -t scheme-tonal-spot -m dark --source-color-index 0 --config ~/.config/matugen/config-i3.toml
    notify-send "Matugen" "配色已更新"
else
    notify-send "Matugen Error" "无法读取当前壁纸路径"
    exit 1
fi
