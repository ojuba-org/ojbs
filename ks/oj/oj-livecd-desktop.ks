%include oj-live-base.ks

%packages
@graphical-internet
@sound-and-video
-gstreamer-plugins-bad-free-extras
-fluid-soundfont-lite-patches
@gnome-desktop
@games # added by alsadi@ojuba.org
-mirrormagic
-pengupop

ojuba-gnome-settings
@office
-java*
-jpackage*
-*gcj*

# FIXME; apparently the glibc maintainers dislike this, but it got put into the
# desktop image at some point.  We won't touch this one for now.
nss-mdns

# This one needs to be kicked out of @base
-smartmontools

# Common packages removed from comps
# For F14, these removals should be moved to comps itself

# save some space
-samba-client
-mpage
-sox
-hplip
-hpijs
-numactl
-isdn4k-utils
-autofs
# smartcards won't really work on the livecd.
-coolkey
-ccid
-wget

# qlogic firmwares
-ql2100-firmware
-ql2200-firmware
-ql23xx-firmware
-ql2400-firmware

# scanning takes quite a bit of space :/
-xsane
-xsane-gimp
-sane-backends

# First, no office
-openoffice.org-*
-ojuba-samples-thawab

# Temporary list of things removed from comps but not synced yet
-specspo
-xsane

# Drop the Java plugin
-java-1.6.0-openjdk-plugin
-java-1.6.0-openjdk

# No printing
-foomatic-db-ppds

# Dictionaries are big
-aspell-*
-hunspell-*
-man-pages*
-words

# Help and art can be big, too
-gnome-user-docs
-evolution-help
-gnome-games-help
-desktop-backgrounds-basic
-constantine-backgrounds-extras

# Legacy cmdline things we don't want
-isdn4k-utils
-nss_db
-krb5-auth-dialog
-krb5-workstation
-pam_krb5
-quota
-nano
-minicom
-dos2unix
-finger
-ftp
-jwhois
-mtr
-pinfo
-rsh
-telnet
-unix2dos
-nfs-utils
-ypbind
-yp-tools
-rpcbind

# Drop some system-config things
-system-config-boot
-system-config-language
-system-config-network
-system-config-rootpassword
-system-config-services
-policycoreutils-gui

%end

%post
cat >> /etc/rc.d/init.d/livesys << EOF
# disable screensaver locking
gconftool-2 --direct --config-source=xml:readwrite:/etc/gconf/gconf.xml.defaults -s -t bool /apps/gnome-screensaver/lock_enabled false >/dev/null
gconftool-2 --direct --config-source=xml:readwrite:/etc/gconf/gconf.xml.defaults -s -t bool /desktop/gnome/lockdown/disable_lock_screen true >/dev/null

# set up timed auto-login for after 60 seconds
cat >> /etc/gdm/custom.conf << FOE
[daemon]
TimedLoginEnable=true
TimedLogin=liveuser
TimedLoginDelay=60
FOE

# Show harddisk install on the desktop
sed -i -e 's/NoDisplay=true/NoDisplay=false/' /usr/share/applications/liveinst.desktop
mkdir /home/liveuser/Desktop
cp /usr/share/applications/liveinst.desktop /home/liveuser/Desktop
chown -R liveuser.liveuser /home/liveuser/Desktop
chmod a+x /home/liveuser/Desktop/liveinst.desktop

# But not trash and home
gconftool-2 --direct --config-source=xml:readwrite:/etc/gconf/gconf.xml.defaults -s -t bool /apps/nautilus/desktop/trash_icon_visible false >/dev/null
gconftool-2 --direct --config-source=xml:readwrite:/etc/gconf/gconf.xml.defaults -s -t bool /apps/nautilus/desktop/home_icon_visible false >/dev/null

# Turn off PackageKit-command-not-found while uninstalled
sed -i -e 's/^SoftwareSourceSearch=true/SoftwareSourceSearch=false/' /etc/PackageKit/CommandNotFound.conf

EOF

%end


