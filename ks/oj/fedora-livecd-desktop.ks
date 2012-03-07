# Desktop with customizationst to fit in a CD sized image (package removals, etc.)
# Maintained by the Fedora Desktop SIG:
# http://fedoraproject.org/wiki/SIGs/Desktop
# mailto:desktop@lists.fedoraproject.org

%include fedora-live-desktop.ks
%include fedora-live-minimization.ks

%packages
@arabic-support
@games
gimp
-aisleriot
-mirrormagic
-pengupop
-zaz
-foo2zjs
-ojuba-samples-thawab
-orca
-@printing
-gutenprint
-gutenprint-cups
-rhythmbox
-pitivi
-istanbul
-stardict
libitl

-gstreamer-plugins-bad-free-extras
-fluid-soundfont-lite-patches

# TODO: remove those
kmod-wl
#kmod-rt2860
#kmod-rt2870
#kmod-rt3070

# needed to disable selinux
system-config-firewall-base

# First, no office
#-libreoffice-*
-planner

-evolution
-evolution-NetworkManager
-shotwell

chmviewkit
-java-1.5.0-gcj
libreoffice-opensymbol-fonts
libreoffice-ogltrans
-libreoffice-report-builder
-libreoffice-draw
-libreoffice-math
-libreoffice-ure
-libreoffice-sdk
-libreoffice-pdfimport
-libreoffice-pyuno
-libreoffice-sdk-doc
-libreoffice-graphicfilter
-libreoffice-xsltfilter
-libreoffice-javafilter
-libreoffice-presenter-screen
-libreoffice-emailmerge
-libreoffice-base
libreoffice-langpack-ar
-libreoffice-langpack-en
libreoffice-writer
libreoffice-calc
libreoffice-impress


# Temporary list of things removed from comps but not synced yet
-specspo

# Java plugin is small when compared to java needed by office
icedtea-web
java-1.6.0-openjdk
-java-1.7.0-openjdk


# Drop things that pull in perl
-linux-atm
-perf

# No printing
-foomatic-db-ppds
-foomatic

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
-*backgrounds-extras

# Legacy cmdline things we don't want
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
-nfs-utils
-ypbind
-yp-tools
-rpcbind
-acpid
-ntsysv

# Drop some system-config things
-system-config-boot
system-config-language
-system-config-network
-system-config-rootpassword
-system-config-services
-policycoreutils-gui

%end

%post
%end
