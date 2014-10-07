# Installer script for sysconf "sysconf.gitolite"  -*- shell-script -*-

. /usr/lib/sysconf.base/common.sh

# "git" UNIX account
grep -q ^git: /etc/passwd || {
    useradd -d /home/git -m git
    # chown -R git:git /home/git
}
# sysconf_require_packages
