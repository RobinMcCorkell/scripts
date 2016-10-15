i3-status
=========

A lightly-customized i3pystatus script, with funky network plugin options.

A main design goal is that all 'normal' information is displayed as white,
only important information is coloured.

Right click on network interfaces cycles between status -> ipv4 -> ipv6 -> status.

Installation
------------

Install `i3pystatus`.

Run this as your status command:

```
bar {
	position top
	status_command python ~/.i3/status.py
}
```

