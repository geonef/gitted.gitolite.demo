## Setup

Same as all Gitted systems. Follow the instructions from the
[gitted.clipperz.demo](https://github.com/geonef/gitted.clipperz.demo)
README, for example.

One thing in particular:
* replace the content of
  [sysconf/sysconf.gitted.gitolite/bootstrap.admin.key.pub](sysconf/sysconf.gitted.gitolite/bootstrap.admin.key.pub)
  with your own public key (generated with ```ssh-keygen```). That key
  is used for initialization only.

It doesn't matter don't set the key before installing: we can edit the
branch ```gitolite-admin``` any time and push it through Gitted.
