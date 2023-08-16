#!/bin/sh

mkdir -p bundles

archive_name="bundles/SoMC-$(date '+%Y%m%d-%H%M').zip"
zip -r $archive_name assets pack.mcmeta pack.png
shasum $archive_name > "$archive_name.hash"
