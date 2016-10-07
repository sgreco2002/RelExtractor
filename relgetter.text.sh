#!/bin/bash
readarray PKGLIST < /home/custapache/RelExtractor/package.list
for ITERATOR in ${PKGLIST[@]}; do
        IFS=# read ART PKG FILE GREP <<< "$ITERATOR"
        RELVAL=`less $PKG/$FILE | grep -i $GREP`
        echo "$ART#$RELVAL"
done
exit 0
