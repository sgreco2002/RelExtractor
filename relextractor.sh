#!/bin/bash
USR=`whoami`
readarray PKGLIST < /home/$USR/RelExtractor/package.list
for ITERATOR in ${PKGLIST[@]}; do
        IFS=# read ART PKG FILE GREP <<< "$ITERATOR"
        RELVAL=`unzip -qc $PKG $FILE | grep -i $GREP`
        echo "$ART#$RELVAL"
done
exit 0
