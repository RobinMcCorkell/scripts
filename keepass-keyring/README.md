keepass-keyring
===============

Start Keepass with a password stored in a system keyring, e.g. GNOME Keyring
or KDE KWallet.

Installation
------------

Copy `keepass-keyring` to somewhere in your PATH, make sure you have Python 3
and the SecretService module.

Set a keyring password with `keepass-keyring --update [db]`.

Start Keepass on login with `keepass-keyring [db]`.
