
%include ojuba-live-desktop.ks
%include ojuba-live-minimization.ks

repo --name=ojuba --baseurl=file:///home/aaaa/35r/Everything/$basearch/os
repo --name=fedora --mirrorlist=http://mirrors.fedoraproject.org/mirrorlist?repo=fedora-20&arch=$basearch
repo --name=updates --mirrorlist=http://mirrors.fedoraproject.org/mirrorlist?repo=updates-released-f20&arch=$basearch
repo --name=rpmfusion-free --mirrorlist=http://mirrors.rpmfusion.org/mirrorlist?repo=free-fedora-20&arch=$basearch
repo --name=rpmfusion-nonfree --mirrorlist=http://mirrors.rpmfusion.org/mirrorlist?repo=nonfree-fedora-20&arch=$basearch


%packages

#ojuba35
desktop-backgrounds-basic
almohazzem
helal-recorder
arabicwordslider
dawawin
kacst-fonts
qutrub
# FIXME :: For Qutrub 
PyQt4
kalimat
arabeyes-core-fonts
arabeyes-decorative-fonts
#gnome-shell-extension-hijra
hijra-applet
hijri
kfgqpc-fonts
monajat-applet
monajat-database
monajat-mod
mozilla-downthemall
occ
ojuba-desktop-settings
ojuba-grub2-theme
ojuba-icon-theme
ojuba-logos-httpd
ojuba-mimic
ojuba-personal-lock
ojuba-release-rawhide
#ojuba-samples
ojuba-virtual-cd
othman
python-hijra
python-monajat
python-okasha
python-okasha-kid
python-okasha-xslt
python-othman
thawab
firefox-ojuba-extra
yum-fast-downloader
yumex
ayat-repo
#chmviewkit
dconf-editor
p7zip
yum-plugin-fastestmirror
rpmfusion-nonfree-release
rpmfusion-free-release
gstreamer-ffmpeg
gstreamer1-plugins-good
gstreamer1-libav
gstreamer1-plugins-bad-freeworld
gstreamer1-plugins-ugly
gtk3-immodule-xim
gtk2-immodule-xim
ffmpeg
x264
unzip
unrar
gtkdialog
ojuba-logos
#flash-plugin
fribidi
hunspell-ar
hunspell-en
amiri-fonts
amiri-quran-fonts
nautilus-open-terminal
gnome-tweak-tool
ojuba-release
-fedora-release*
fedora-release-secure
-generic-release*
-fedora-logos*
-generic-logos*
@arabic-support
-ojuba-samples-thawab
-orca
-@printing
-gutenprint
-gutenprint-cups
-evolution
-evolution-ews
libreoffice-opensymbol-fonts
libreoffice-ogltrans
-libreoffice-calc
-libreoffice-draw
-libreoffice-math
-libreoffice-ure
-libreoffice-sdk
-libreoffice-pdfimport
-libreoffice-pyuno
-libreoffice-sdk-doc
-libreoffice-graphicfilter
-libreoffice-xsltfilter
-libreoffice-emailmerge
-libreoffice-base
libreoffice-langpack-ar
-libreoffice-langpack-en
libreoffice-writer
-libreoffice-impress

# reduce the office suite in size
-planner

# remove some other applications
-gnome-boxes
-gnome-dictionary

# remove input method things we don't need
-ibus-typing-booster
-imsettings
-imsettings-gsettings

# Drop the Java plugin
-icedtea-web
-java-1.7.0-openjdk
-java-1.8.0-openjdk

# Drop things that pull in perl
-linux-atm

# No printing
-foomatic-db-ppds
-foomatic

# we don't want prelink
-prelink

# Dictionaries are big
# we're going to try keeping hunspell-* after notting, davidz, and ajax voiced
# strong preference to giving it a go on #fedora-desktop.
# also see http://bugzilla.gnome.org/681084
-aspell-*
-man-pages*
-words

# Help and art and fonts can be big, too
-evolution-help
-*backgrounds-extras
-stix-fonts

# Legacy and cmdline things we don't want
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
-nfs-utils
-ypbind
-yp-tools
-rpcbind
-acpid
-ntsysv
-rmt
-talk
-lftp
-tcpdump
-dump

# Drop some system-config things
#-system-config-boot
#-system-config-language
#-system-config-rootpassword
#-system-config-services
-policycoreutils-gui

# These things are cut purely for space reasons
-aisleriot
-brasero
-brasero-nautilus
-bijiben
-gnome-system-log
-deja-dup
-eog
-gnu-free-mono-fonts
-gnu-free-sans-fonts
-gnu-free-serif-fonts
-uboot-tools
-dtc

# Without gnu freefonts, the lack of Malayalam coverage is
# a problem in anaconda (#977764)
lohit-malayalam-fonts

%end

%post

# This is a huge file and things work ok without it
rm -f /usr/share/icons/HighContrast/icon-theme.cache

#ojuba

chmod 755 /boot/grub2/themes/ojuba/activate-theme
perl /boot/grub2/themes/ojuba/activate-theme
grub2-mkconfig -o /boot/grub2/grub.cfg

%end
