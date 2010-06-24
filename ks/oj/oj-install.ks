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
@education
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
# was in fedora DVD and let's put them back
avahi-tools
bridge-utils
################
# development
################
kernel-devel
kernel-doc
cmake
qt-creator
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

# some savings
-gcompris-sound-fr
-gcompris-sound-de
-kde-l10n-German
-kde-l10n-French
-openoffice.org-langpack-de
-Cg

# just to make sure
ojuba-release
-fedora-release*
-generic-release*
-fedora-logos*
-generic-logos*


%end

