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

# Package manifest for the compose.  Uses repo group metadata to translate groups.
# (@base is added by default unless you add --nobase to %packages)
# (default groups for the configured repos are added by --default)
%packages --default
# core
tcsh
kernel*
dracut-*
# Desktop Packages
@gnome-desktop
@kde-desktop
@xfce-desktop
@lxde-desktop
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

# we use VirtualBox < alsadi@ojuba.org
# Virt group
#@virtualization --optional
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

#######################
# extra xfce4 plugins 
#######################
xfce4-battery-plugin
xfce4-cddrive-plugin
xfce4-clipman-plugin
xfce4-cpugraph-plugin
xfce4-datetime-plugin
xfce4-dev-tools
xfce4-dict
xfce4-dict-plugin
xfce4-diskperf-plugin
xfce4-eyes-plugin
xfce4-fsguard-plugin
xfce4-genmon-plugin
xfce4-mailwatch-plugin
xfce4-mount-plugin
xfce4-netload-plugin
xfce4-notes-plugin
xfce4-notifyd
xfce4-places-plugin
xfce4-power-manager
xfce4-quicklauncher-plugin
xfce4-radio-plugin
xfce4-screenshooter
xfce4-screenshooter-plugin
xfce4-sensors-plugin
xfce4-smartbookmark-plugin
xfce4-systemload-plugin
xfce4-taskmanager
xfce4-time-out-plugin
xfce4-timer-plugin
xfce4-weather-plugin
xfce4-websearch-plugin
xfce4-xkb-plugin

# apps
@authoring-and-publishing
@eclipse
@editors
-eclipse-pde
joe
emacs
python3
python3-tools
python3-setuptools
@education
ojuba-desktop-settings
ojuba-gnome-settings
ojuba-samples-thawab
drgeo
drgeo-doc
fantasdic
#gcompris
genchemlab
gperiodic
gtypist
kdeedu
kdeedu-kstars
kdeedu-math
#stellarium
tuxtype2
-moodle
@engineering-and-scientific
octave
qtoctave
qucs
TeXmacs
wxMaxima
speedcrunch
gnome-chemistry-utils
gnome-chemistry-utils-mozplugin 
chemtool
#R-*
#R
#R-core
kchmviewer
qcad
PythonCAD
kicad
gnucap
gspiceui
linsmith
ngspice
@games
@graphical-internet
tor
chromium
skype
gyachi
liferea
kompozer
seamonkey
amule
wxdfast
filezilla
prozilla
openvrml-mozilla-plugin
-evolution-help
@graphics
tuxpaint
tuxpaint-stamps
blender
blender-freeworld
blenderplayer-freeworld
yafray
inkscape
xsane-gimp
scribus
autotrace
evince-dvi
fontforge
html2ps
#ImageMagick-docs
#too big 50MB
gimp-help-browser
gimp-help
@java
@java-development
@office
@printing
openoffice.org-draw
openoffice.org-emailmerge
openoffice.org-extendedPDF.noarch
openoffice.org-graphicfilter
openoffice.org-javafilter
openoffice.org-math
openoffice.org-ooolatex.noarch
openoffice.org-opensymbol-fonts
openoffice.org-pdfimport
openoffice.org-presenter-screen
openoffice.org-pyuno
openoffice.org-rhino
openoffice.org-testtools
openoffice.org-ure
openoffice.org-voikko
openoffice.org-xsltfilter
openoffice.org-ogltrans
openoffice.org-presentation-minimizer
openoffice.org-report-builder
openoffice.org-sdk
openoffice.org-sdk-doc
openoffice.org-wiki-publisher
openoffice.org-writer2xhtml
openoffice.org-writer2latex
gnumeric
koffice-suite
koffice-filters
gnucash
pspp
gnumeric
@sound-and-video
@text-internet
@system-tools
system-config-audit
system-config-bind
system-config-cluster
system-config-kdump
system-config-kickstar
system-config-netboot
system-config-netboot-cmd
system-config-nfs
system-config-vsftpd
system-switch-displaymanager
system-switch-displaymanager-gnome
system-switch-java
system-switch-mail
system-switch-mail-gnome
wireshark-gnome
crack
fuse-encfs
arj
bash-completion
cabextract
gkrellm
xgnokii
wammu
gnome-nettool
lirc
mc
p0f
nmap-frontend
powertop
wlassistant
conky
fdupes
xfwm4-themes
oxygen-cursor-themes
gnome-themes-extras
deskbar-applet
hamster-applet
emerald-themes
cairo-dock
cairo-dock-plug-ins
cairo-dock-plug-ins-webkit
cairo-dock-plug-ins-xfce
screenlets
bluecurve-gtk-themes
gtk-murrine-engine
gtk-nodoka-engine-extras
fusion-icon-gtk
fusion-icon-qt
avant-window-navigator
awn-extras-applets
compiz-fusion-extras
compiz-fusion-extras-gnome
ccsm
emerald
gnomenu
mintmenu
gnome-do
gnome-do-plugins
gnome-do-plugins-firefox
gnome-do-plugins-thunderbird
gnome-do-plugins-eog
gnome-do-plugins-pidgin
xscreensaver
xscreensaver-extras
xscreensaver-extras-gss
xscreensaver-gl-base
xscreensaver-gl-extras
xscreensaver-gl-extras-gss
rss-glx
rss-glx-gnome-screensaver
rss-glx-kde
rss-glx-xscreensaver
gconf-editor
gtk-qt-engine
google-gadgets
google-gadgets-gtk
google-gadgets-qt
gnome-phone-manager

# free extra utils
p7zip
p7zip-plugins
xz
fuse-encfs
fuse-gmailfs
fuse-smb
fuse-sshfs
fuse-zip
fusecompress
zfs-fuse
bsdiff
ffmpeg
freetype-freeworld
# extra non-free tools
unrar
# releases
google-release
# extra non-free drivers
-qemu*
-kmod-kqemu
mesa-dri-drivers-experimental
kmod-em8300
kmod-rt2860
kmod-rt2870
kmod-rt3070
kmod-wl
kmod-ndiswrapper
kmod-nvidia
akmod-em8300
akmod-rt2860
akmod-rt2870
akmod-rt3070
akmod-wl
akmod-ndiswrapper
akmod-nvidia
akmod-em8300
#############
# NOTE by alsadi@ojuba.org: nss-mdns not avialable on DVD but it's only 24K, to be reconsidered
nss-mdns

cnetworkmanager
NetworkManager-vpnc
NetworkManager-openvpn
NetworkManager-openconnect
NetworkManager-pptp
NetworkManager-vpnc

knetworkmanager
knetworkmanager-openvpn
knetworkmanager-pptp
knetworkmanager-vpnc

ModemManager
gtraffic


# those two was in fedora DVD and let's put them back
avahi-tools
bridge-utils

################
# development
################
kernel-devel
kernel-doc
cmake
qt-creator
lazarus
fuse-devel
fuse-python
gvfs-devel
httpd-devel
freeglut-devel
fribidi-devel
libicu-devel
lzma-devel
xz-devel
chmlib-devel
python-chm
xulrunner-devel
xulrunner-python
python-docs
pygtk2-doc
nasm
#php*
php-cli
phpMyAdmin
phpPgAdmin
php-ZendFramework
php-ZendFramework-demos
phpldapadmin
#python-twisted*
Cython
python-twisted
python-twisted-web
python-twisted-web2
python-twisted-core-doc
rubygem-rails
python-pylons
Django
TurboGears
TurboGears2
ruby-gnome2
rubyripper-gui
gnome-python2-gtkmozembed
webkitgtk-doc
webkitgtk
webkitgtk-devel
pywebkitgtk
wxGTK-devel
monodevelop
gambas2-ide
bzr-gtk
check
check-devel
chrpath
ghex
meld
gedit-plugins
clutter
clutter-cairo-devel
clutter-devel
clutter-devel
clutter-doc
clutter-gst-devel
clutter-gtk
clutter-gtk-devel
ffmpeg-devel
glade2
gnome-packagekit-extra
gnome-python2-gnomeprint
gnome-python2-gtksourceview
gst-inspector
gstreamermm
gstreamermm-devel
gstreamer-python-devel
gtkglarea2
gtkglarea2-devel
gtkglext-devel
phonon-backend-gstreamer
pyclutter
pyclutter-cairo
pyclutter-devel
pyclutter-gst
pyclutter-gst
pyclutter-gtk
pygtkglext
PyOpenGL
qt-doc
qt-demos
qt-odbc
ruby-gstreamer
SDL_gfx-devel
SDL_image-devel
SDL_mixer-devel
SDL_net-devel
SDL_Pango-devel
SDL_sound-devel
SDL_ttf-devel
ImageMagick-perl

###########
# servers
###########
arptables_jf
ypbind
yp-tools
nfs-utils
rpcbind
ApacheDirectoryStudio
#ipa-admintools
#ipa-client
#ipa-python
#ipa-radius-admintools
#ipa-radius-server
#ipa-server
#389-ds
#389-dsgw
openldap-servers
openldap-servers-sql
smbldap-tools
mozldap-tools
mod_*
mysql-administrator
mysql-gui-tools
tomcat6
tomcat6-jsp-2.1-api
tomcat6-servlet-2.5-api
tomcat6-admin-webapps
tomcat6-lib
tomcat6-webapps
reiserfs-utils
xfsprogs
jfsutils
wine
wine-pulseaudio
dosbox
VirtualBox-OSE
kmod-VirtualBox-OSE
akmod-VirtualBox-OSE
VirtualBox-OSE-guest
pyvnc2swf


@hardware-support --optional
foo2*
ctapi-cyberjack-tools
gsynaptics
hddtemp
hplip-gui
xorg-x11-drv-ark
xorg-x11-drv-chips
xorg-x11-drv-ivtv
xorg-x11-drv-tseng
xorg-x11-drv-s3
xorg-x11-drv-avivo

####################
# adding some games
####################
gnome-games
chess
heroes
atomix
pingus
pengupop
rocksndiamonds
megamario
mirrormagic
solarwolf
KoboDeluxe
smc
extremetuxracer
lmarbles
ltris
lbrickbuster2
#Ri-li
barrage
supertux
enigma
gbrainy
frozen-bubble
neverball
foobillard
armacycles-ad
# too big games
#nexuiz
xmoto
#FlightGear
supertuxkart
maniadrive
wormux
warzone2100
#wesnoth
#torcs

# make sure that totem is there
totem
rhythmbox
# adding general apps
gnome-ppp
gnome-packagekit
gnome-user-share
cdparanoia
nautilus-extensions
nautilus-*
seahorse
seahorse-plugins
realcrypt
festival
festvox-slt-arctic-hts
hunspell-en
# some utils
hardinfo
stardict
uget
# arabic support
openoffice.org-langpack-ar
hunspell-ar
hijra-applet
kde-plasma-athkar
minbar
arabeyes-core-fonts
arabeyes-decorative-fonts
kacst-fonts
me_quran-fonts
msttcore-fonts
# dictionaries
stardict-Arabeyes-en-ar
stardict-Babylon-ar-en
cheese
pitivi
istanbul
ojuba-mimic
#gtk-recordmydesktop
gstreamer-ffmpeg
gstreamer-plugins-bad
gstreamer-plugins-bad-extras
gstreamer-python
gstreamer-plugins-ugly
#smplayer
dvgrab
kino
kdenlive
openshot
easytag
w32codecs
flash-plugin
libflashsupport
gecko-mediaplayer
exaile
AcetoneISO2
ojuba-virtual-cd
k3b
k3b-extras-freeworld
transcode
libdvdcss
audacity-freeworld
audacious
avidemux
devede
k9copy
brasero
banshee
dvdrip
#mythtv
xawtv
kdetv
vdr
# chm
#archmage
kchmviewer
phonon-backend-gstreamer
phonon-backend-xine

######################################
firstaidkit
firstaidkit-plugin-all 
enscript
pavucontrol
pulseaudio-utils
joystick
kerneloops
libertas-usb8388-firmware
libevent
libgpod
libmtp
bluez-cups
bluez-alsa
bluez-gnome-analyzer
bluez-gstreamer
system-config-boot
system-config-language
system-config-lvm
system-config-rootpassword
smartmontools-config
yum-utils
# some yum plugins <alsadi@ojuba.org
yum-fastestmirror
yum-kernel-module
# for our sound up script we need alsa-utils <alsadi@ojuba.org
alsa-utils
alsa-plugins-pulseaudio
# gparted
isomd5sum

####################
## add sun's java
-java-1.6.0-openjdk*
java-1.6.0-sun*
netbeans
groovy
grails
###################
# remote desktop
vino
gnome-rdp
vinagre
pyvnc2swf
####################
## allow composing
pungi
livecd-tools
liveusb-creator
anaconda-yum-plugins
anaconda
cracklib-python
iscsi-initiator-utils
memtest86+

# some savings
-xorg-x11-docs
#-kernel-doc
-java-1.5.0-gcj-src
-java-1.5.0-gcj-devel
-libgcj-src
-*javadoc*
-frysk
-*gcj*
-gcompris-sound-fr
-gcompris-sound-de
-kde-l10n-German
-kde-l10n-French
-openoffice.org-langpack-de
-Cg
-dasher


# just to make sure
ojuba-release
-fedora-release*
-generic-release*
-fedora-logos*
-generic-logos*


%end

