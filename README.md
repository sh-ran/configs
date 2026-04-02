## Configs

- move `10-serverflags.conf` and `40-libinput.conf` to `/etc/X11/xorg.conf.d/` folder. They are to disable mouse accelaration and sleep settings.
- move the `.otf` fonts to `/usr/share/fonts/opentype/` folder.
- Move `amd_pmc.conf` to `/etc/modprobe.d/` and reboot to fix the keyboard not waking up after suspend on newer AMD Ryzen chips ([source](https://www.reddit.com/r/Lenovo/comments/1q02pr7/solved_keyboard_not_working_after_suspendsleep_on/)).
- icons: Papirus-icon-theme
- cursor: Bibata cursors