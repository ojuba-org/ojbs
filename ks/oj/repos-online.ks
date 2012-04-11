%include repos-offline.ks
# internet repos

repo --name=released --mirrorlist=http://mirrors.fedoraproject.org/mirrorlist?repo=fedora-16&arch=$basearch --exclude kernel*debug* --exclude kernel-kdump* --exclude syslog-ng --exclude java-1.5.0-gcj-devel --exclude generic* --exclude java-1.5.0-gcj-javadoc --exculde fedora-logos --exculde fedora-release --exculde fedora-release-notes

repo --name=updates --mirrorlist=http://mirrors.fedoraproject.org/mirrorlist?repo=updates-released-f16&arch=$basearch --exclude kernel*debug* --exclude kernel-kdump* --exclude syslog-ng --exclude java-1.5.0-gcj-devel --exclude generic* --exclude java-1.5.0-gcj-javadoc  --exculde fedora-logos --exculde fedora-release --exculde fedora-release-notes

repo --name=rpmfusion-free-released --mirrorlist=http://mirrors.rpmfusion.org/mirrorlist?repo=free-fedora-16&arch=$basearch
repo --name=rpmfusion-free-releasedupdates --mirrorlist=http://mirrors.rpmfusion.org/mirrorlist?repo=free-fedora-updates-released-16&arch=$basearch

repo --name=rpmfusion-nonfree-released --mirrorlist=http://mirrors.rpmfusion.org/mirrorlist?repo=nonfree-fedora-16&arch=$basearch
repo --name=rpmfusion-nonfree-releasedupdates --mirrorlist=http://mirrors.rpmfusion.org/mirrorlist?repo=nonfree-fedora-updates-released-16&arch=$basearch

repo --name=gimp-unstable --baseurl=http://repos.fedorapeople.org/repos/nphilipp/gimp-unstable/fedora-$releasever/$basearch/

repo --name=fedora-chromium --baseurl=http://repos.fedorapeople.org/repos/spot/chromium-stable/fedora-$releasever/$basearch/

repo --name=fedora-cinnamon --baseurl=http://repos.fedorapeople.org/repos/leigh123linux/cinnamon/fedora-$releasever/$basearch/

repo --name=adobe --baseurl=http://linuxdownload.adobe.com/linux/$basearch/

# livna for dvdcss
#repo --name=livna --baseurl=http://rpm.livna.org/repo/16/$basearch/
