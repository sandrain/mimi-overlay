# If you want to try this overlay

[Local overlays](https://wiki.gentoo.org/wiki/Overlay/Local_overlay) should be
managed via `/etc/portage/repos.conf/`.  To enable this overlay make sure you
are using a recent Portage version (at least `2.2.14`), and crate an
`/etc/portage/repos.conf/brother-overlay.conf` file containing precisely:

```
[mimi-overlay]
location = /usr/local/portage/mimi-overlay
sync-type = git
sync-uri = https://github.com/sandrain/mimi-overlay.git
priority=9999
```

Afterwards, simply run `emerge --sync`, and Portage should seamlessly make all
our ebuilds available.

# With layman

Read the instructions on the
[Gentoo Wiki](http://wiki.gentoo.org/wiki/Layman#Adding_custom_overlays),
then invoke the following:

```
layman -o https://raw.githubusercontent.com/sandrain/mimi-overlay/master/repositories.xml -f -a mimi-overlay
```

After performing those steps, the following should work (or any other package
from this overlay):

```
sudo emerge -av dev-python/telegram-twx-botapi
```
