#!/bin/bash

PATCH="s/\(chrome\|resource\):\/\/zotero/\\1:\/\/jurism/g"

find chrome -type f | xargs sed -si "$PATCH"
find components -type f | xargs sed -si "$PATCH"
find resource -type f | xargs sed -si "$PATCH"
find defaults -type f | xargs sed -si "$PATCH"

sed -si "$PATCH" install.rdf
sed -si "$PATCH" update.rdf
sed -si "$PATCH" chrome.manifest

sed -si "s/^content[ 	]\+zotero/content	jurism/" chrome.manifest
sed -si "s/^resource[ 	]\+zotero/resource	jurism/" chrome.manifest
sed -si "s/^locale[ 	]\+zotero/locale	jurism/" chrome.manifest
sed -si "s/^skin[ 	]\+zotero/skin	jurism/" chrome.manifest
