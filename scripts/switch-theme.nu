#!/usr/bin/env nu

let current_theme = ^gsettings get org.gnome.desktop.interface color-scheme

let light_theme = "prefer-light"
let dark_theme = "prefer-dark"

if ($current_theme =~ $light_theme) {
  ^gsettings set org.gnome.desktop.interface color-scheme $dark_theme
} else {
  ^gsettings set org.gnome.desktop.interface color-scheme $light_theme
}

