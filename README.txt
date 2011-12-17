  * edit buildsys.conf
  * run scripts/comps-update.sh
  * run scripts/mk-oj-repo.sh
  * manually edit ks/oj/repos-online.ks
  * you may need to edit scripts/comps-fix.sh
  * run scripts/comps-fix.sh
  * make sure it gives "comps/oj-comps.xml validates"
  * mkdir localrepos/cached
  * mkdir localrepos/any-thing
  * you may use scripts/mv-yum-cache.sh
  * run ./scripts/create-all-repos.sh
  * run set-on-line.sh then build
  * run scripts/cp-build-cache.sh
  * then set-off-line.sh then build again

NOTES:
  * your repos should have ojuba-release>fedora-release and releated packages
    * ojuba-release
    * ojuba-docs (for ojuba-release)
  * your repos should ojuba patched version of
    * anaconda
    * system-config-keyboard
    * system-setup-keyboard
  * system-config-keyboard should be installed on host machine BEFORE building system-setup-keyboard
  * not to be confusing with xkeyboard-config which is for right alt-shift bug

