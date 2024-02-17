#!/system/bin/sh

dos2unix "$MODPATH/service.sh"
dos2unix "$MODPATH/post-fs-data.sh"

chmod +x "$MODPATH/service.sh"
chmod +x "$MODPATH/post-fs-data.sh"
