#! /bin/bash
pushd $(dirname "$0")/..
# TODO: mark some packages as default instead of adding them

# kmod-qc-usb kmod-madwifi
# add optional items: gecko-mediaplayer mozilla-vlc totem-mozplugin

# add to kde group: gtk-qt-engine qgtkstyle

# FIXME: foo2oak conflics

# replace java-1.6.0-openjdk java-1.6.0-openjdk-plugin
#      <packagereq type="default">java-1.6.0-sun</packagereq>
#      <packagereq type="default">java-1.6.0-sun-alsa</packagereq>
#      <packagereq type="default">java-1.6.0-sun-fonts</packagereq>
#      <packagereq type="default">java-1.6.0-sun-jdbc</packagereq>
#      <packagereq type="default">java-1.6.0-sun-plugin</packagereq>

#-      <packagereq type="default">java-1.6.0-sun-demo</packagereq>
#-      <packagereq type="default">java-1.6.0-sun-devel</packagereq>
#-      <packagereq type="default">java-1.6.0-sun-src</packagereq>
#+      <packagereq type="default">java-1.6.0-openjdk-demo</packagereq>
#+      <packagereq type="default">java-1.6.0-openjdk-devel</packagereq>
#+      <packagereq type="default">java-1.6.0-openjdk-javadoc</packagereq>
#+      <packagereq type="default">java-1.6.0-openjdk-src</packagereq>

# NOTE: yum-fastestmirror is renamed yum-plugin-fastestmirror


perl -lwpe '
# TODO: add media-repo
# slmodem no longer available
# hardware support
s:^(\s*\Q<packagereq type="default">alsa-firmware</packagereq>\E):${1}\n<packagereq type="default">kmod-em8300</packagereq>\n<packagereq type="default">kmod-omnibook</packagereq>\n<packagereq type="default">kmod-rt2860</packagereq>\n<packagereq type="default">kmod-rt2870</packagereq>\n<packagereq type="default">kmod-rt3070</packagereq>\n<packagereq type="default">kmod-wl</packagereq>\n<packagereq type="optional">kmod-ndiswrapper</packagereq>\n<packagereq type="optional">kmod-nvidia</packagereq>\n<packagereq type="optional">akmod-em8300</packagereq>\n<packagereq type="optional">akmod-omnibook</packagereq>\n<packagereq type="optional">akmod-rt2860</packagereq>\n<packagereq type="optional">akmod-rt2870</packagereq>\n<packagereq type="optional">akmod-rt3070</packagereq>\n<packagereq type="optional">akmod-wl</packagereq>\n<packagereq type="optional">akmod-ndiswrapper</packagereq>\n<packagereq type="optional">akmod-nvidia</packagereq>\n:;

# printing
s:^(\s*\Q<packagereq type="mandatory">cups</packagereq>\E):${1}\n<packagereq type="default">foo2hiperc</packagereq>\n<packagereq type="default">foo2hp</packagereq>\n<packagereq type="default">foo2lava</packagereq>\n<packagereq type="default">foo2qpdl</packagereq>\n<packagereq type="default">foo2slx</packagereq>\n<packagereq type="default">foo2xqx</packagereq>\n<packagereq type="default">foo2zjs</packagereq>:;


# base
s:^(\s*\Q<packagereq type="mandatory">cronie-anacron</packagereq>\E):${1}\n      <packagereq type="default">xz-lzma-compat</packagereq>\n<packagereq type="default">p7zip</packagereq>\n<packagereq type="default">xz</packagereq>\n<packagereq type="default">unrar</packagereq>\n<packagereq type="default">yum-plugin-fastestmirror</packagereq>\n<packagereq type="default">yum-presto</packagereq>\n<packagereq type="default">google-release</packagereq>\n<packagereq type="default">rpmfusion-free-release</packagereq>\n      <packagereq type="default">rpmfusion-nonfree-release</packagereq>\n:;

# base-X
s:^(\s*\Q<packagereq type="mandatory">xorg-x11-xinit</packagereq>\E):${1}
\n<packagereq type="default">occ</packagereq>\n\n<packagereq type="default">ojuba-desktop-settings</packagereq>\n<packagereq type="default">ojuba-samples</packagereq>\n<packagereq type="default">ojuba-samples-thawab</packagereq>\n<packagereq type="mandatory">ojuba-logos</packagereq>\n<packagereq type="default">thawab</packagereq>\n<packagereq type="default">othman</packagereq>\n<packagereq type="default">minbar</packagereq>\n<packagereq type="default">monajat-applet</packagereq>\n<packagereq type="default">istanbul</packagereq>\n<packagereq type="default">ojuba-virtual-cd</packagereq><packagereq type="default">numlockx</packagereq>\n<packagereq type="default">mlterm</packagereq>\n<packagereq type="default">freetype-freeworld</packagereq>\n<packagereq type="default">system-config-display</packagereq>\n<packagereq type="default">msttcore-fonts</packagereq>\n<packagereq type="default">stardict</packagereq>\n<packagereq type="default">gpaint-2</packagereq>\n:;

# games
s:^(\s*\Q<packagereq type="default">joystick</packagereq>\E):${1}\n<packagereq type="default">games-menus</packagereq>\n<packagereq type="default">atomix</packagereq>\n<packagereq type="default">heroes</packagereq>\n<packagereq type="default">heroes-sound-effects</packagereq>\n<packagereq type="default">KoboDeluxe</packagereq>\n<packagereq type="default">mirrormagic</packagereq>\n<packagereq type="default">pengupop</packagereq>\n<packagereq type="default">puzzles</packagereq>\n:;

# gnome
s:^(\s*\Q<packagereq type="mandatory">fedora-gnome-theme</packagereq>\E):<packagereq type="mandatory">ojuba-gnome-theme</packagereq>\n<packagereq type="mandatory">ojuba-gnome-settings</packagereq>\n:;

# firefox
s:^(\s*\Q<packagereq type="default">firefox</packagereq>\E):      <packagereq type="mandatory">firefox</packagereq>\n      <packagereq type="mandatory">firefox-ojuba-extra</packagereq>\n      <packagereq type="default">flash-plugin</packagereq>\n      <packagereq type="default">uget</packagereq>\n      <packagereq type="default">libflashsupport</packagereq>:;


# arabic support
s:^(\s*\Q<packagereq type="default">kacst-\E[^-]*\Q-fonts</packagereq>\E)::;

s:^(\s*\Q<packagereq type="conditional" requires="aspell">aspell-ar</packagereq>\E):${1}\n      <packagereq type="conditional" requires="gtk2">gtk2-immodule-xim</packagereq>\n      <packagereq type="conditional" requires="stardict">stardict-Arabeyes-en-ar</packagereq>\n      <packagereq type="conditional" requires="stardict">stardict-Babylon-ar-en</packagereq>\n       <packagereq type="default">kacst-fonts</packagereq>\n<packagereq type="default">arabeyes-core-fonts</packagereq>\n      <packagereq type="default">arabeyes-decorative-fonts</packagereq>\n      <packagereq type="default">hijra-applet</packagereq>\n      <packagereq type="default">kfgqpc-fonts</packagereq>\n      <packagereq type="default">me_quran-fonts</packagereq>\n      <packagereq type="default">msttcore-fonts</packagereq>\n:;


# sound-and-video
s:^(\s*\Q<packagereq type="default">cdparanoia</packagereq>\E):${1}\n<packagereq type="default">ojuba-mimic</packagereq>\n<packagereq type="default">pitivi</packagereq>\n<packagereq type="default">gstreamer-ffmpeg</packagereq>\n<packagereq type="default">gstreamer-plugins-bad</packagereq>\n<packagereq type="default">gstreamer-plugins-bad-free</packagereq>\n<packagereq type="default">
gstreamer-plugins-bad-nonfree</packagereq>\n<packagereq type="default">gstreamer-plugins-bad-free-extras</packagereq>\n<packagereq type="default">gstreamer-plugins-good</packagereq>\n<packagereq type="default">gstreamer-plugins-ugly</packagereq>\n<packagereq type="default">libdvdcss</packagereq>\n<packagereq type="optional">audacity-freeworld</packagereq>\n:;

# make evolution optional
s:\Q<packagereq type="\E[^"]+\Q">evolution\E:<packagereq type="optional">evolution:;

# make some fonts optional
@a=qw(abyssinica-fonts cjkuni-uming-fonts jomolhari-fonts khmeros-base-fonts lklug-fonts padauk-fonts paktype-fonts smc-meera-fonts stix-fonts thai-scalable-waree-fonts un-core-fonts-dotum vlgothic-fonts);
for $i (@a) {
  s:\Q<packagereq type="default">\E${i}\Q</packagereq>\E:<packagereq type="optional">$i</packagereq>:;
}
s:\Q<packagereq type="default">\E(lohit.*fonts)\Q</packagereq>\E:<packagereq type="optional">${1}</packagereq>:;

# drop mono dependency, drop ypbind and nis and nfs
@a=qw(dasher tomboy ypbind nfs-utils rpcbind);
for $i (@a) {
  s:\Q<packagereq type="default">\E${i}\Q</packagereq>\E:<packagereq type="optional">$i</packagereq>:;
}


# make some defaults optional
s:\Q<packagereq type="default">policycoreutils-gui</packagereq>\E:<packagereq type="optional">policycoreutils-gui</packagereq>:;
s:\Q<packagereq type="mandatory">selinux-policy-targeted</packagereq>\E:<packagereq type="optional">selinux-policy-targeted</packagereq>:;
s:\Q<packagereq type="mandatory">policycoreutils</packagereq>\E:<packagereq type="optional">policycoreutils</packagereq>:;
s:\Q<packagereq type="default">setroubleshoot</packagereq>\E:<packagereq type="optional">setroubleshoot</packagereq>:;
s:\Q<packagereq type="default">gnome-games</packagereq>\E:<packagereq type="optional">gnome-games</packagereq>:;
s:\Q<packagereq type="default">gnome-games-help</packagereq>\E:<packagereq type="optional">gnome-games-help</packagereq>:;
s:\Q<packagereq type="mandatory">bind</packagereq>\E:<packagereq type="optional">bind</packagereq>:;
s:\Q<packagereq type="mandatory">audit</packagereq>\E:<packagereq type="optional">audit</packagereq>:;
s:\Q<packagereq type="default">gcalctool</packagereq>\E:<packagereq type="optional">gcalctool</packagereq>:;

# make some optionals defaults
s:\Q<packagereq type="optional">p7zip</packagereq>\E:<packagereq type="default">p7zip</packagereq>:;

s:\Q>java-1.6.0-openjdk\E:>java-1.6.0-sun:;

s:\Q>fedora-release\E:>ojuba-release:g;

' comps/fedora-comps.xml > comps/oj-base-comps.xml

# make im optional
perl -i -0 -wpe 's:(\Q<id>input-methods</id>\E.*?)\Q<default>true</default>\E:${1}<default>false</default>:ms;' comps/oj-base-comps.xml

# make arabic-support default
perl -i -0 -wpe 's:(\Q<id>arabic-support</id>\E.*?)\Q<default>false</default>\E:${1}<default>true</default>:ms;' comps/oj-base-comps.xml

xsltproc comps/comps-cleanup.xsl comps/oj-base-comps.xml 1>comps/oj-comps.xml
# no longer needed with recent cleanup.xsl
#sed -i -re '/<\/comps>/d' comps/oj-comps.xml
#perl -lwne 'BEGIN{$e=0}if (/\Q<blacklist>\E/) {$e=1}if ($e==1) {print $_}' comps/fedora-comps.xml >>comps/oj-comps.xml
xmllint --noout --relaxng comps/comps.rng comps/oj-comps.xml
popd

