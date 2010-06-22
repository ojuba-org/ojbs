#! /bin/bash
pushd $(dirname "$0")/..
#[ -f /usr/share/pungi/comps-cleanup.xsl ] && cp /usr/share/pungi/comps-cleanup.xsl comps/comps-cleanup.xsl ||
curl -o comps/comps-cleanup.xsl 'http://git.fedorahosted.org/git/?p=comps.git;a=blob_plain;f=comps-cleanup.xsl;hb=HEAD'
curl -o comps/comps.rng 'http://git.fedorahosted.org/git/?p=comps.git;a=blob_plain;f=comps.rng;hb=HEAD'
popd
