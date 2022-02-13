#!/bin/sh

# Script from dwm patch "layoutmenu"
# source: https://dwm.suckless.org/patches/layoutmenu/

# xmenu is required https://github.com/phillbush/xmenu

cat <<EOF | xmenu
[]= Tiled Layout	0
[M] Monocle Layout	1
[@] Spiral Layout	2
[\\] Dwindle Layout	3
H[] Deck Layout	4
TTT BStack Layout	5
=== BStack Horizontal Layout	6
HHH Grid Layout	7
### NRow Grid Layout	8
--- Horizontal Grid Layout	9
::: Gapless Grid Layout	10
|M| Centered Master Layout	11
>M> Centered Floating Master Layout	12
><> Floating Layout	13
EOF
