%include repos-offline.ks
%include repos-oj.ks
# internet repos

repo --name=released --mirrorlist=http://mirrors.fedoraproject.org/mirrorlist?repo=fedora-19&arch=$basearch
repo --name=updates --mirrorlist=http://mirrors.fedoraproject.org/mirrorlist?repo=updates-released-f19&arch=$basearch

repo --name=rpmfusion-free-released --mirrorlist=http://mirrors.rpmfusion.org/mirrorlist?repo=free-fedora-19&arch=$basearch
repo --name=rpmfusion-free-releasedupdates --mirrorlist=http://mirrors.rpmfusion.org/mirrorlist?repo=free-fedora-updates-released-19&arch=$basearch

repo --name=rpmfusion-nonfree-released --mirrorlist=http://mirrors.rpmfusion.org/mirrorlist?repo=nonfree-fedora-19&arch=$basearch
repo --name=rpmfusion-nonfree-releasedupdates --mirrorlist=http://mirrors.rpmfusion.org/mirrorlist?repo=nonfree-fedora-updates-released-19&arch=$basearch

repo --name=adobe --baseurl=http://linuxdownload.adobe.com/linux/$basearch/

# livna for dvdcss
#repo --name=livna --baseurl=http://rpm.livna.org/repo/19/$basearch/
