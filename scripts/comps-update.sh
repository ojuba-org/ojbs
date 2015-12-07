#! /bin/bash
function save_comps() {
save_fn=$1
urlbase=$2
url=$urlbase/repodata/repomd.xml
echo " ** getting [$url]"
comps=$( wget -O - "$url" 2>/dev/null | perl -lwne 'if (/"([^"]*comps[^"]*.xml)"/) {print $1}' )
wget -O $save_fn $urlbase/$comps
echo +++++++ Comps=$comps
}
pushd $(dirname "$0")/..
. buildsys.conf
#save_comps comps/rpmfusion-free-comps.xml.gz http://download1.rpmfusion.org/free/fedora/updates/$fedora_release/i386 
#save_comps comps/rpmfusion-nonfree-comps.xml.gz http://download1.rpmfusion.org/nonfree/fedora/updates/$fedora_release/i386 

save_comps comps/fedora-comps.xml http://download.fedoraproject.org/pub/fedora/linux/updates/${fedora_release}/${base_arch}


#gunzip comps/*.gz

#{
#perl -lwne 'if (not m:</comps>:) {print $_}' comps/rpmfusion-free-comps.xml
#perl -lwne 'if ($.>3 and not m:</comps>:) {print $_}' comps/rpmfusion-nonfree-comps.xml
#echo "</comps>"
#} > comps/rpmfusion-comps-unsorted.xml
#xsltproc comps/comps-cleanup.xsl comps/rpmfusion-comps-unsorted.xml 1>comps/rpmfusion-comps.xml

popd

