volume-control
==============

A handler for volume change keys. Displays the volume and mute status with
`volnoti`.

Installation
------------

Copy `volume-control` to somewhere you can run it.

You will need `pactl` and `volnoti`.

Bind your volume keys (or any other keys) to this script. Run
`volume-control up` to increase the volume, `volume-control down` to decrease
it, and `volume-control mute` to toggle the mute status.

Also start `volnoti` in your session.

If using i3, put the following in `.i3/config` (assuming you installed this
to `.i3/volume-control`:

```
exec --no-startup-id volnoti
bindsym XF86AudioRaiseVolume exec --no-startup-id ~/.i3/volume-control up
bindsym XF86AudioLowerVolume exec --no-startup-id ~/.i3/volume-control down
bindsym XF86AudioMute exec --no-startup-id ~/.i3/volume-control mute
```

