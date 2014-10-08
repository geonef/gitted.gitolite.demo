# Gitted gitolite install + cgit web viewer

[Gitted](https://github.com/geonef/sysconf.gitted) is a way to package
ready-to-use systems which are runned under Linux as
[LXC containers](http://linuxcontainers.org/).

This repository provides a Gitted distribution of
[Gitolite](http://gitolite.com/), a solution to manage Git hosting
with fine user permissions settings.

The clever thing is that Gitolite uses a special repository,
*gitolite-admin*, to configure itself (permission and user public
keys).

The system generated with Gitted also contains
[cgit](http://git.zx2c4.com/cgit/), a fast web Git viewer written in
C.


## Setup

Replace the content of
[sysconf/sysconf.gitted.gitolite/bootstrap.admin.key.pub](sysconf/sysconf.gitted.gitolite/bootstrap.admin.key.pub)
with your own public key (generated with ```ssh-keygen```). That key
is used for initialization only.

* It doesn't matter don't set the key before installing: we can edit the
  branch ```gitolite-admin``` any time and push it through Gitted.

Follow the common instructions for installing a
  [Gitted](https://github.com/geonef/sysconf.gitted) app:
```
git clone https://github.com/geonef/gitted.gitolite.demo.git && cd gitted.gitolite.demo
sysconf/gitted-client register && sysconf/gitted-client add gitted-gitolite
git push gitted-gitolite master
```

## Administrate gitolite

Fetch the gitolite-admin branch:
```
git fetch gitted-gitolite
git checkout gitted-gitolite/gitolite-admin
```

Edit the gitolite admin conf if needed and update it with:
```
git commit ... # whatever you changed, added keys, etc.
git push gitted-gitolite gitolite-admin
```

More info in the
["conf" file page of the official Gitolite documentation](http://gitolite.com/gitolite/conf.html).


# Create and using repositories

Do as indicated in the
[Gitolite documentation](http://gitolite.com/gitolite/index.html), by
acessing the repositories through SSH. For SSH, use the IP address of
the container (from the emssages of git fetch/push above, or with
```lxc-ls -f```).
