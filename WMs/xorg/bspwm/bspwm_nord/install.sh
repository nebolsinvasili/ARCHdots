stow -R -v -t ~/.config config

cat << EOF > ~/.xinitrc
exec sxhkd -c ~/.config/bspwm/themes/bspwm_nord/sxhkd/sxhkdrc &  
exec bspwm -c ~/.config/bspwm/themes/bspwm_nord/bspwm/bspwmrc
EOF
