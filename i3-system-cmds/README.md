i3-system-cmds
==============

Useful i3 keybindings for system-level commands, like poweroff, reboot etc.

Installation
------------

Put this in `.i3/config`:

```
set $mode_system System | (e) exit; (s) suspend; (h) hibernate; (r) reboot; (p) poweroff
mode "$mode_system" {
        bindsym e exit
        bindsym s exec --no-startup-id ~/.i3/lock.sh && systemctl suspend, mode "default"
        bindsym h exec --no-startup-id ~/.i3/lock.sh && systemctl hibernate, mode "default"
        bindsym r exec --no-startup-id systemctl reboot, mode "default"
        bindsym p exec --no-startup-id systemctl poweroff -i, mode "default"

        bindsym Return mode "default"
        bindsym Escape mode "default"
}

bindsym $mod+Shift+Delete mode "$mode_system"
```

Adjust the `$mode_system` keybind as you want. This snippet makes use of
my `lock.sh`, which you should totally use as well.
