# Use a part of 'iso' to define how large you want your isos.
# Only used when composing to more than one iso.
# Default is 695 (megs), CD size.
# Listed below is the size of a DVD if you wanted to split higher.
#part iso --size=4998

# Add the repos you wish to use to compose here.  At least one of them needs group data.

lang ar_SA.UTF-8
keyboard ar-qwerty
timezone Asia/Riyadh

auth --useshadow --enablemd5
selinux --disabled
firewall --enabled --service=mdns
xconfig --startxonboot
part / --size 3072 --fstype ext4
services --enabled=NetworkManager,dhcdbd --disabled=network,sshd,irqbalance,sendmail,nasd,slmodem

%include repos.ks

# just to make sure
-fedora-release*
ojuba-release

# Package manifest for the compose.  Uses repo group metadata to translate groups.
# (@base is added by default unless you add --nobase to %packages)
# (default groups for the configured repos are added by --default)
%packages --default
# core
tcsh
kernel*
dracut-*
# Desktop Packages
@kde-desktop
echo-icon-theme
tracker
swfdec
nspluginwrapper
liferea
esc
thunderbird
@dial-up
# apps
@eclipse
joe
emacs
k3b
@system-tools
mc
wireshark-gnome
# Devel packages
@development-libs
@development-tools
@fedora-packager
@gnome-software-development
@kde-software-development
@web-development
@x-software-development
# Server packages
@dns-server
@ftp-server
@mail-server
@mysql
@network-server
@news-server
@server-cfg
@smb-server
@sql-server
@web-server
# Keep dap off the install media, makes Eng & Sci show up
-dap-server-cgi
# Virt group
@virtualization --optional
# filesystem stuff
@filesystems
# Languages
@arabic-support
@french-support
@german-support
# Size removals
-gimp-help
-java-1.6.0-openjdk-src
-xorg-x11-docs
-kernel-doc
-java-1.5.0-gcj-src
-java-1.5.0-gcj-devel
-libgcj-src
-*javadoc*
-frysk
-*gcj*
%end

