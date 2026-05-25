#!/usr/bin/env bash
set -euo pipefail

# Make sure systemd --user and dbus-activated services see the Wayland session env.
# This helps with portals (screen-share/file pickers) and various desktop integrations.
if command -v systemctl >/dev/null 2>&1; then
  systemctl --user import-environment WAYLAND_DISPLAY XDG_CURRENT_DESKTOP HYPRLAND_INSTANCE_SIGNATURE || true

  # Portals are often systemd-managed; restarting here avoids "old env" issues after login.
  systemctl --user restart xdg-desktop-portal.service 2>/dev/null || true
  systemctl --user restart xdg-desktop-portal-hyprland.service 2>/dev/null || true
fi

if command -v dbus-update-activation-environment >/dev/null 2>&1; then
  dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP HYPRLAND_INSTANCE_SIGNATURE || true
fi

# Start a polkit authentication agent if one isn't already running.
if ! pgrep -u "$USER" -f 'polkit.*agent' >/dev/null 2>&1; then
  for agent in \
    polkit-gnome-authentication-agent-1 \
    lxqt-policykit-agent \
    polkit-kde-agent-1 \
    kde-polkit-agent \
    mate-polkit \
  ; do
    if command -v "$agent" >/dev/null 2>&1; then
      "$agent" >/dev/null 2>&1 &
      disown || true
      break
    fi
  done
fi

