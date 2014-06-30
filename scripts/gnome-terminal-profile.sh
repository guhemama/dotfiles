#!/usr/bin/env bash
# Sets up profile setting

PROFILE_KEY=/apps/gnome-terminal/profiles/Default

# Util
gset() {
    local type="$1"; shift
    local key="$1"; shift
    local val="$1"; shift

     gconftool-2 --set --type "$type" "$PROFILE_KEY/$key" -- "$val"
}

dset() {
    local key="$1"; shift
    local val="$1"; shift

    if [[ "$type" == "string" ]]; then
        val="'$val'"
    fi

    dconf write "$PROFILE_KEY/$key" "$val"
}

# Profile colors from Base16 Solarized
dset palette "['#002b36', '#dc322f', '#859900', '#b58900', '#268bd2', '#6c71c4', '#2aa198', '#93a1a1', '#657b83', '#dc322f', '#859900', '#b58900', '#268bd2', '#6c71c4', '#2aa198', '#fdf6e3']"
dset background-color "'#002b36'"
dset foreground-color "'#93a1a1'"
dset bold-color "'#93a1a1'"
dset bold-color-same-as-fg "true"
dset use-theme-colors "false"
dset use-theme-background "false"

gset string palette "#002b36:#dc322f:#859900:#b58900:#268bd2:#6c71c4:#2aa198:#93a1a1:#657b83:#dc322f:#859900:#b58900:#268bd2:#6c71c4:#2aa198:#fdf6e3"
gset string background_color "#002b36"
gset string foreground_color "#93a1a1"
gset string bold_color "#93a1a1"
gset bool   bold_color_same_as_fg "true"
gset bool   use_theme_colors "false"
gset bool   use_theme_background "false"

# Profile settings
gset string font "Ubuntu Mono derivative Powerline 12"
gset bool   use_system_font "false"
gset bool   login_shell "true"

unset PROFILE_KEY