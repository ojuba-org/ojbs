%include repos-offline.ks
# internet repos

repo --name=released --mirrorlist=http://mirrors.fedoraproject.org/mirrorlist?repo=fedora-13&arch=$basearch
repo --name=updates --mirrorlist=http://mirrors.fedoraproject.org/mirrorlist?repo=updates-released-f13&arch=$basearch

repo --name=rpmfusion-free-released --mirrorlist=http://mirrors.rpmfusion.org/mirrorlist?repo=free-fedora-13&arch=$basearch
repo --name=rpmfusion-free-releasedupdates --mirrorlist=http://mirrors.rpmfusion.org/mirrorlist?repo=free-fedora-updates-released-13&arch=$basearch

repo --name=rpmfusion-nonfree-released --mirrorlist=http://mirrors.rpmfusion.org/mirrorlist?repo=nonfree-fedora-13&arch=$basearch
repo --name=rpmfusion-nonfree-releasedupdates --mirrorlist=http://mirrors.rpmfusion.org/mirrorlist?repo=nonfree-fedora-updates-released-13&arch=$basearch

# livna for dvdcss
repo --name=livna --baseurl=http://rpm.livna.org/repo/13/$basearch/
